require File.expand_path('lib/flock_os/version', __dir__)

Gem::Specification.new do |gem|
  gem.name                  = 'flock_os'
  gem.authors               = [ "Risal Hidayat" ]
  gem.email                 = "risalhidayat88@gmail.com"
  gem.homepage              = 'https://github.com/rslhdyt/flock_os'
  gem.summary               = %q{ Ruby SDK for the FlockOs }
  gem.description           = %q{ The ruby SDK for the FlockOs integration }
  gem.version               = FlockOs::VERSION
  gem.license               = "MIT"
  gem.required_ruby_version = '>= 2.5.0'

  gem.files = Dir['Rakefile', '{features,lib,spec}/**/*', 'README*', 'LICENSE*']
  gem.require_paths = %w[ lib ]

  gem.add_dependency 'faraday', '1.10'
  gem.add_dependency 'faraday_middleware', '1.2'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'pry'
end