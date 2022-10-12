module FlockOs
  module Model
    class Attachment < FlockOs::Model::Base
      attr_accessor :id,
                    :app_id,
                    :title,
                    :description,
                    :color,
                    :views,
                    :url,
                    :forward,
                    :downloads,
                    :buttons
    end
  end
end