module FlockOs
  module Model
    class ChannelMember < FlockOs::Model::Base
      attr_accessor :user_id,
                    :affiliation,
                    :public_profile
    end
  end
end