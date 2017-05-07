module Anzen
  module Na
    module Password
      class CharSet
        def pattern(type: :basic)
          case type
          when :basic
            [("a".."z"), ("A".."Z"), (0..9)].map(&:to_a).flatten
          when :full
            [("a".."z"), ("A".."Z"), (0..9), ("!".."/"), ("[".."`"), ("{".."~")].map(&:to_a).flatten
          else
            string_pattern(type: type)
          end
        end

        private

        def string_pattern(type:)
          case type
          when Symbol, Integer, String
            type.to_s.split(//)
          when Array
            type
          else
            raise TypeError, "Cannot Convert to Password String"
          end
        end
      end
    end
  end
end
