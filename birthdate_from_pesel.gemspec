# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'birthdate_from_pesel/version'

Gem::Specification.new do |spec|
  spec.name          = "birthdate_from_pesel"
  spec.version       = BirthdateFromPesel::VERSION
  spec.authors       = ["Damian Baćkowski"]
  spec.email         = ["damianbackowski@gmail.com"]

  spec.summary       = %q{Getting birthdate from polish pesel number.}
  spec.description   = %q{Getting birthdate from polish pesel number.}
  spec.homepage      = "https://github.com/dbackowski/birthdate_from_pesel"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.5.0"
end
