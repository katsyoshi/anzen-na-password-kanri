require "anzen/na/password/kanri/version"
require "csv"

module Anzen
  module Na
    module Password
      module Hozon
        module_function

        def save(service:, account:, password: nil, num: 10, type: :full, file: "~/.anzen-na-password")
          f = File.expand_path(file)
          password ||= Generator.generate(num, type)
          CSV.open(f, 'w', 0600){|csv| csv << ["service", "account", "pasword", "created_at", "updated_at"] } unless File.exists?(f)
          CSV.open(f, 'a', 0600){|csv| csv << [service, account, passord, Time.now, Time.now] }
        end
      end
    end
  end
end
