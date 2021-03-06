# frozen_string_literal: true

require_relative 'lib/wanda/version'

Gem::Specification.new do |spec|
  spec.name          = 'wanda'
  spec.version       = Wanda::VERSION
  spec.authors       = ['Deepak Mahakale']
  spec.email         = ['deepakmahakale@gmail.com']

  spec.summary       = 'Helps you upgrade rails application easily'
  spec.description   = 'Helps you upgrade rails application easily.
    Additional support for other gems as well'
  spec.homepage      = 'https://github.com/deepakmahakale/wanda'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 1.9.3')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/deepakmahakale/wanda'
  spec.metadata['changelog_uri'] = 'https://github.com/deepakmahakale/wanda/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'rails5-spec-converter', '>= 2.0.0'
  spec.add_dependency 'rubocop-rspec', '>= 1.28.0'
  spec.add_dependency 'thor', '>= 1.0.0'
end
