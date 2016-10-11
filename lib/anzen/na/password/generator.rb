require "anzen/na/password/kanri/version"

module Anzen
  module Na
    module Password
      module Generator
        module_function

        def generate(num: , type: :full)
          (0..num.to_i).map{ pattern(type: type).sample }.join
        end

        def pattern(type: :basic)
          password_characters = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten
          case type
          when :full
            password_characters += [('!'..'/'), ('['..'`'), ('{'..'~')].map(&:to_a).flatten
          else
            password_characters
          end
        end
      end
    end
  end
end
