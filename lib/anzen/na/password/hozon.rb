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
          CSV.open(f, 'w', 0600){|csv| csv << ["service", "account", "password", "created_at", "updated_at"] } unless File.exists?(f)
          CSV.open(f, 'a', 0600){|csv| csv << [service, account, password, Time.now, Time.now] }
          {service: service, account: account, password: password}
        end
      end
    end
  end
end
