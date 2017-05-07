require "anzen/na/password/kanri/version"

module Anzen
  module Na
    module Password
      module Generator
        module_function

        def generate(num:, type: :full)
          Array.new(num.to_i){ pattern(type: type).sample }.join
        end

        def pattern(type: :basic)
          case type
          when :basic
            @password_characters ||= [("a".."z"), ("A".."Z"), (0..9)].map(&:to_a).flatten
          when :full
            @password_characters ||= [("a".."z"), ("A".."Z"), (0..9), ("!".."/"), ("[".."`"), ("{".."~")].map(&:to_a).flatten
          else
            @password_characters ||= type.split(//) if String === type
            @password_characters ||= type if Array === type
            @password_characters ||= type.to_s.split(//) if Integer === type
          end
          @password_characters
        end
      end
    end
  end
end
