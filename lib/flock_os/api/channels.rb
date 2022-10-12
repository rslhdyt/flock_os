module FlockOs
  module Api
    class Channels < FlockOs::Api::Base
      PATH = 'channels'

      def add_members(channel_id, members)
        response = @client.post("#{PATH}.addMembers", {
          channelId: channel_id, 
          members: members
        })
        
        FlockOs::Model::ModifyChannelMember.new(response)
      end
      
      def create(params)
        response = @client.post("#{PATH}.create", {
          channel_id: channel_id,
          members: members
        })
        
        FlockOs::Model::CreateChannel.new(response)
      end
      
      def get_info(channel_id)
        response = @client.post("#{PATH}.getInfo", {
          channelId: channel_id
        })
        
        FlockOs::Model::Channel.new(response)
      end
      
      def list
        response = @client.post("#{PATH}.list")
        
        FlockOs::Collection::Channel.new(response)
      end
      
      def list_members(channel_id)
        response = @client.post("#{PATH}.listMembers", {
          channelId: channel_id
        })
        
        FlockOs::Collection::Channel.new(response)
      end
      
      def remove_members(channel_id, members)
        response = @client.post("#{PATH}.removeMembers", {
          channelId: channel_id,
          members: members
        })
        
        FlockOs::Model::ModifyChannelMember.new(response)
      end
    end
  end
end