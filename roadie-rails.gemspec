# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'roadie/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "roadie-rails"
  spec.version       = Roadie::Rails::VERSION
  spec.authors       = ["Magnus Bergmark"]
  spec.email         = ["magnus.bergmark@gmail.com"]
  spec.homepage      = 'http://github.com/Mange/roadie-rails'
  spec.summary       = %q{Making HTML emails comfortable for the Rails rockstars}
  spec.description   = %q{Hooks Roadie into your Rails application to help with email generation.}
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 2.5"

  spec.files         = `git ls-files | grep -v ^spec`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.extra_rdoc_files = %w[README.md Changelog.md LICENSE.txt]
  spec.require_paths = ["lib"]

  spec.add_dependency "roadie", "~> 3.1"
  spec.add_dependency "railties", ">= 5.1", "< 5.3"

  spec.add_development_dependency "rails", ">= 5.1", "< 5.3"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rspec", "~> 3.8"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "rspec-collection_matchers"
end
