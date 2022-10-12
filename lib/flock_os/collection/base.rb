module FlockOs
  module Collection
    class Base
      def collection
        @collection ||= []
      end
    end
  end
end