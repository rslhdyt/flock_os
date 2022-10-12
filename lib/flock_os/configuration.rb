module FlockOs
  class Configuration
    attr_accessor :token

    def initialize(**args)
      @token = args[:token]
    end

    def configure
      yield self
    end
  end
end