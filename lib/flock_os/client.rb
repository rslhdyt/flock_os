require 'faraday_middleware'

require 'flock_os/api/base'
require 'flock_os/model/base'
require 'flock_os/collection/base'

require 'flock_os/api/channels'
require 'flock_os/api/chat'
require 'flock_os/api/rooster'
require 'flock_os/api/users'

require 'flock_os/collection/channel_member'
require 'flock_os/collection/channel'
require 'flock_os/collection/message'
require 'flock_os/collection/public_profile'
require 'flock_os/collection/user'

require 'flock_os/model/attachment'
require 'flock_os/model/channel_member'
require 'flock_os/model/channel'
require 'flock_os/model/message'
require 'flock_os/model/modify_channel_member'
require 'flock_os/model/public_profile'
require 'flock_os/model/send_message'
require 'flock_os/model/user'

module FlockOs
  class Client
    BASE_URL = 'https://api.flock.co/v1'.freeze

    def initialize(options = {})
      config = FlockOs::Configuration.new(options)

      yield config if block_given?

      @connection = Faraday.new(url: BASE_URL) do |conn|
        conn.params[:token] = config.token
        conn.request :json
        conn.response :json
        
        # conn.use ::Middleware::HandleResponseException
        conn.adapter Faraday.default_adapter
      end
    end

    def channels
      @channels ||= FlockOs::Api::Channels.new(self)
    end

    def chat
      @chat ||= FlockOs::Api::Chat.new(self)
    end

    def rooster
      @rooster ||= FlockOs::Api::Rooster.new(self)
    end

    def users
      @users ||= FlockOs::Api::Users.new(self)
    end

    def post(url, params = {})
      response = @connection.post(url, params)
      response.body
    end
  end
end