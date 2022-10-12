module FlockOs
  module Collection
    class ChannelMember < FlockOs::Collection::Base
      def initialize(collection_params = [])
        @collection = collection_params.map do |param|
          FlockOs::Model::ChannelMember.new(param)
        end
      end
    end
  end
end