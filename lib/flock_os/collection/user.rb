module FlockOs
  module Collection
    class User < FlockOs::Collection::Base
      def initialize(collection_params = [])
        @collection = collection_params.map do |param|
          FlockOs::Model::User.new(param)
        end
      end
    end
  end
end