require "anzen/na/password/charset"

module Anzen
  module Na
    module Password
      module Generator
        module_function

        def generate(num:, type: :full)
          charset = CharSet.new.pattern(type: type)
          Array.new(num.to_i){ charset.sample }.join
        end
      end
    end
  end
end
