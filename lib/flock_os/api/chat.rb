module FlockOs
  module Api
    class Chat < FlockOs::Api::Base
      PATH = 'chat'

      def fetch_messages(chat, user_uids)
        response = @client.post("#{PATH}.fetchMessages", {
          chat: chat, 
          uids: user_uids
        })
        
        FlockOs::Collection::Message.new(response)
      end
      
      def send_message(params)
        response = @client.post("#{PATH}.sendMessage", params)
        
        FlockOs::Model::SendMessage.new(response)
      end
    end
  end
end