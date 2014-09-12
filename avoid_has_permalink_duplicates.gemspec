# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'avoid_has_permalink_duplicates/version'

Gem::Specification.new do |spec|
  spec.name          = "avoid_has_permalink_duplicates"
  spec.version       = AvoidHasPermalinkDuplicates::VERSION
  spec.authors       = ["Yehia Abo El-Nga"]
  spec.email         = ["yehia@ewsalo.com"]
  spec.description   = "This is an add-on to avoid "has_permalink" gem duplicates/conflicts in Rails by adding a small hash to the end of the permalink!"
  spec.summary       = "This is an add-on to avoid "has_permalink" gem duplicates/conflicts in Rails by adding a small hash to the end of the permalink!"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
