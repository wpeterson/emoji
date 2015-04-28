# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'emoji/version'

Gem::Specification.new do |spec|
  spec.name          = "emoji"
  spec.version       = Emoji::VERSION
  spec.authors       = ["Steve Klabnik", "Winfield Peterson"]
  spec.email         = ["steve@steveklabnik.com", "winfield.peterson@gmail.com"]
  spec.description   = %q{A Ruby gem. For emoji. For everyone. :heart:}
  spec.summary       = %q{A Ruby gem. For emoji. For everyone. :heart:}
  spec.homepage      = "http://github.com/wpeterson/emoji"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "json"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
