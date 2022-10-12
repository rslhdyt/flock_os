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

  gem.add_dependency 'faraday', '~> 1.10'
  gem.add_dependency 'faraday_middleware', '~> 1.2'

  gem.add_development_dependency 'rspec', '~> 3.11.0'
  gem.add_development_dependency 'webmock', '~> 3.18.1'
  gem.add_development_dependency 'vcr', '~> 6.1.0'
  gem.add_development_dependency 'simplecov', '~> 0.21'
  gem.add_development_dependency 'rake', '~> 13.0'
  gem.add_development_dependency 'bundler', '~> 2.2'
  gem.add_development_dependency 'pry', '~> 0.14'
end