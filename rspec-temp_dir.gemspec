# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/temp_dir/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-temp_dir"
  spec.version       = Rspec::TempDir::VERSION
  spec.authors       = ["sue445"]
  spec.email         = ["sue445@sue445.net"]
  spec.summary       = %q{create automatically temporary directory at each examples}
  spec.description   = %q{create automatically temporary directory at each examples}
  spec.homepage      = "https://github.com/sue445/rspec-temp_dir"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "codeclimate-test-reporter"
  spec.add_development_dependency "coveralls"
end
