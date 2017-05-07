# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'anzen/na/password/kanri/version'

Gem::Specification.new do |spec|
  spec.name          = "anzen-na-password-kanri"
  spec.version       = Anzen::Na::Password::Kanri::VERSION
  spec.authors       = ["MATSUMOTO, Katsuyoshi"]
  spec.email         = ["github@katsyoshi.org"]

  spec.summary       = %q{Secure password generator and manager}
  spec.description   = %q{Secure password generate and manage for instance}
  spec.license       = "MIT"
  spec.homepage      = "https://github.com/katsyoshi/anzen-na-password-kanri"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "zxcvbn-ruby"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
