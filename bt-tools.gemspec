lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'tools/version'

Gem::Specification.new do |spec|
  spec.name          = 'bt-tools'
  spec.version       = Tools::VERSION
  spec.authors       = ['Andrew Page']
  spec.email         = %w(andrew@andrewpage.me)

  spec.summary       = 'Collection of tools for automating BitTorrent.'
  spec.description   = 'Collection of tools for provisioning, managing, and automating BitTorrent seedboxes.'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = %w(bt-tools)
  spec.require_paths = %w(lib)

  spec.add_dependency 'activesupport', '~> 4.2.0'

  # General Development Dependencies
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry'

  # Test Dependencies
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'aruba'
  spec.add_development_dependency 'codeclimate-test-reporter'
end
