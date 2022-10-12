require_relative 'flock_os/version'
require 'flock_os/client'
require 'flock_os/configuration'
require 'flock_os/helpers'

module FlockOs
  class << self
    attr_accessor :client, :config

    def new(options = {}, &block)
      @client = FlockOs::Client.new(options, &block)
    end

    def config
      @config ||= Configuration.new
    end

    def reset
      @config = Configuration.new
    end

    def configure
      yield config
    end
  end
end