module FlockOs
  module Model
    class Channel < FlockOs::Model::Base
      attr_accessor :id,
                    :name,
                    :member_count,
                    :profile_image
    end
  end
end