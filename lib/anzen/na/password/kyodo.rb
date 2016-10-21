require "anzen/na/password/kanri/version"

module Anzen
  module Na
    module Password
      module Kyodo
        module_function

        def sokutei(password, user_inputs: [])
          Zxcvbn.test(password, user_inputs)
        end
      end
    end
  end
end
