# FlockOs API
FlockOs API client

WARNING This FlockOs client is under development.

## Installation
Add this line to your application's Gemfile:

```
gem 'flock_os'
```

And then execute:

```
$ bundle install
```

Or install it yourself as:

```
$ gem install flock_os
```

## Usage

#### Init the client

There is multiple ways to set the config.

```
FlockOs.configure do |config|
    config.token = 'token'
end

client = FlockOs.new
```

Alternatively, you can configure the FlockOs settings by passing a block:

```
client = FlockOs.new do |config|
    config.token = 'token'
end
```

#### Interact with the interface

You can interact with FlockOs interface, for example send message, by issuing following calls that correspond directly to the FlockOs API hierarchy

```
response = client.chat.send_message({ 
    to: 'u:xxx',
    text: 'Hallo'
})
```

## Development
After checking out the repo, run bin/setup to install dependencies. Then, run rake spec to run the tests. You can also run bin/console for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run bundle exec rake install. To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and the created tag, and push the .gem file to rubygems.org.