require "anzen/na/password/kanri/version"
require "csv"

module Anzen
  module Na
    module Password
      module Hozon
        module_function

        def save(service:, account:, password: nil, num: 10, type: :full, file: "~/.anzen-na-password")
          f = File.expand_path(file)
          password ||= Generator.generate(num: num, type: type)
          CSV.open(f, 'w', 0600){|csv| csv << header } unless File.exist?(f)
          CSV.open(f, 'a', 0600){|csv| csv << [service, account, password, Time.now, Time.now] }
          {service: service, account: account, password: password}
        end

        def update(service:, account:, password: nil, num: 10, type: :full, file: "~/.anzen-na-password")
          f = File.expand_path(file)
          ret = nil
          c = nil
          CSV.open(f, 'r', 0600) do |csv|
            c = csv.map do |row|
              if row[0] == service && row[1] == account
                row[2] = password || Generator.generate(num: num, type: :full)
                row[-1] = Time.now
                ret = row
              end
              row
            end
          end

          CSV.open(f, 'w', 0600) do |csv|
            c.each{|row| csv << row }
          end
          Hash[c[0].zip(ret)]
        end

        def header
          ["service", "account", "password", "created_at", "updated_at"]
        end
      end
    end
  end
end
