module FlockOs
  module Collection
    class Channel < FlockOs::Collection::Base
      def initialize(collection_params = [])
        @collection = collection_params.map do |param|
          FlockOs::Model::Channel.new(param)
        end
      end
    end
  end
end