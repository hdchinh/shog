# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shog/version'

Gem::Specification.new do |spec|
  spec.name          = "shog"
  spec.version       = "#{Shog::VERSION}"
  spec.authors       = ["Paul Alexander"]
  spec.email         = ["me@phallguy.com"]
  spec.summary       = %q{Simple colored logging for rails 4 and 5 apps}
  spec.description   = %q{More than just colorful tags, make rails logged info easy to read and understand.}
  spec.homepage      = "https://github.com/phallguy/shog"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails', '>= 4'
  spec.add_dependency 'colorize', '>= 0.8'
  spec.required_ruby_version = '>= 1.9.2'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 10'
  spec.add_development_dependency "rspec", '~> 3.00'
end
