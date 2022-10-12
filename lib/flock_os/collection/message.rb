module FlockOs
  module Collection
    class Message < FlockOs::Collection::Base
      def initialize(collection_params = [])
        @collection = collection_params.map do |param|
          FlockOs::Model::Message.new(param)
        end
      end
    end
  end
end