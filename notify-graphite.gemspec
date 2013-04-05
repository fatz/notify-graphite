Gem::Specification.new do |spec|
  spec.license                = 'MIT'
  spec.name                   = 'notify-graphite'
  spec.version                = '0.0.1'
  spec.files                  = Dir["bin/*"] + Dir["lib/**/*"]
  spec.summary                = 'Push event notifications to Graphite'
  spec.description            = 'Push event notifications to Graphite'
  spec.executables            = ['notify_graphite']
  spec.required_ruby_version  = '> 1.9'

  spec.authors                = ['Jan Ulferts']
  spec.email                  = ['janu@cpan.org']
  spec.homepage               = 'https://github.com/fatz/notify-graphite'

  spec.add_dependency 'graphite_client', '~> 0.4'
end