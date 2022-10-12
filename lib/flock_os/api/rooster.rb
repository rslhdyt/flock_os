module FlockOs
  module Api
    class Rooster < FlockOs::Api::Base
      PATH = 'rooster'

      def list_contacts
        response = @client.post("#{PATH}.listContacts")
        
        FlockOs::Collection::PublicProfile.new(response)
      end
    end
  end
end