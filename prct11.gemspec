# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prct11/version'

Gem::Specification.new do |spec|
  spec.name          = "prct11"
  spec.version       = Prct11::VERSION
  spec.authors       = ["Leandro Ponte","Ayoze Pacheco"]
  spec.email         = ["alu0100724165@ull.edu.es","alu0100721768@ull.edu.es"]
  spec.description   = %q{Esta es una practica que me tiene hasta los cojones}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = "https://github.com/alu0100724165/prct11.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
end
