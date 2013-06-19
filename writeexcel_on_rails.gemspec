# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'writeexcel_on_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "writeexcel_on_rails"
  spec.version       = WriteexcelOnRails::VERSION
  spec.authors       = ["zhiliang"]
  spec.email         = ["jordzhang@gmail.com"]
  spec.description   = %q{writeexcel for rails, and generate xls template}
  spec.summary       = %q{writeexcel for rails}
  spec.homepage      = "https://github.com/jordzhang/writeexcel_on_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "rails", "~>3.2"
  spec.add_dependency "writeexcel"
end
