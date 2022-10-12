module FlockOs
  module Model
    class Message < FlockOs::Model::Base
      attr_accessor :from,
                    :to,
                    :id,
                    :uid,
                    :timestamp,
                    :text,
                    :flockml,
                    :notification,
                    :app_id,
                    :mentions,
                    :send_as,
                    :attachments
    end
  end
end