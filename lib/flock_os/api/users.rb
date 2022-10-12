module FlockOs
  module Api
    class Users < FlockOs::Api::Base
      PATH = 'users'

      def get_info
        response = @client.post("#{PATH}.getInfo")
        
        FlockOs::Model::User.new(response)
      end
      
      def get_public_profile(user_id)
        response = @client.post("#{PATH}.getPublicProfile", {
          userId: user_id
        })
        
        FlockOs::Model::PublicProfile.new(response)
      end
    end
  end
end