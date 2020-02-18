require "anzen/na/password/kanri/version"

module Anzen
  module Na
    module Password
      module Kanri
        module_function

        def agent(command, opt)
          case command.to_sym
          when :gen
            opt.delete(:file)
            puts Anzen::Na::Password::Generator.generate(**opt)
          when :hozon
            Anzen::Na::Password::Hozon.save(opt).each{|k, v| puts "#{k}: #{v}" }
          when :kensa
            opt.delete(:file)
            raise if opt[:password].nil?
            result = Anzen::Na::Password::Kyodo.sokutei(opt[:password], user_inputs: [opt[:user_inputs]].flatten)
            puts "password: #{opt[:password]}"
            puts "score: #{result.score}"
            puts "crack time: #{result.crack_time_display}"
          when :koshin
            Anzen::Na::Password::Hozon.save(**opt).each{|k, v| puts "#{k}: #{v}" }
          end
        end
      end
    end
  end
end
