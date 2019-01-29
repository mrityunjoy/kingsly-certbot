# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kingsly_certbot/version'

Gem::Specification.new do |spec|
  spec.name          = 'kingsly_certbot'
  spec.version       = KingslyCertbot::VERSION
  spec.authors       = ['FOSS at GO-JEK']
  spec.email         = ['foss+tech@go-jek.com']

  spec.summary       = 'kingsly-certbot would update the local certs and update them from the ones generated by kingsly'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = 'https://rubygems.org'

    spec.metadata['source_code_uri'] = 'https://github.com/gojekfarm/kingsly-certbot'
    spec.metadata['changelog_uri'] = 'https://github.com/gojekfarm/kingsly-certbot/blob/master/CHANGELOG.md'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'bin'
  spec.executables = ['kingsly-certbot']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0.1'
  spec.add_development_dependency 'rake', '~> 10.5.0'
  spec.add_development_dependency 'rspec', '~> 3.8.0'
  spec.add_development_dependency 'rubocop', '~> 0.63.1'
  spec.add_development_dependency 'webmock', '~> 3.5.1'
  spec.add_runtime_dependency 'sentry-raven', '~> 2.9.0'
end
