require 'spec_helper'

describe FlockOs::Api::Channels do
  let(:client) { FlockOs::Client.new }
  let(:stub_add_members_response) do
    {
      members: {
        "u:id1": { status: "added" },
        "u:id2": { status: "failed", error: "UserNotFound" }
      }
    }
  end
  
  subject(:chat) { described_class.new(client) }
  subject(:add_member) { chat.add_members('channel_id', ['member']) }

  describe '#add_members' do
    before do
      allow_any_instance_of(FlockOs::Client).to receive(:post).and_return(stub_add_members_response)
    end

    context 'when successfully fetch messages' do
      it 'return message collection class' do
        expect(add_member).to be_an FlockOs::Model::ModifyChannelMember
      end
      
      it 'return correct attribute values' do
        response = add_member

        expect(response.members).to eq stub_add_members_response[:members]
      end
    end
  end
end