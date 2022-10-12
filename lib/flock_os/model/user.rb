module FlockOs
  module Model
    class User < FlockOs::Model::Base
      attr_accessor :id,
                    :team_id,
                    :email,
                    :first_name,
                    :last_name,
                    :role,
                    :timezone,
                    :profile_image
    end
  end
end