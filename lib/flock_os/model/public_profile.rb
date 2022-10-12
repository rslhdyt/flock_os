module FlockOs
  module Model
    class PublicProfile < FlockOs::Model::Base
      attr_accessor :id,
                    :first_name,
                    :last_name,
                    :profile_image,
                    :is_guest
    end
  end
end