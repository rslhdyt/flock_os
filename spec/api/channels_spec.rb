require 'spec_helper'

describe FlockOs::Api::Channels do
  let(:client) { FlockOs::Client.new }
  let(:stub_fetch_response) do
    [ 
      { 
        "from": "u:xxx",
        "to": "u:xxx",
        "uid": "fd4877b719b1",
        "text": "Hello" 
      }
    ]
  end

  let(:send_message_params) do
    {
      "to": "u:xxx",
      "text": "Hello"
    }
  end

  let(:stub_send_response) { { uid: 'uuid' } }
  
  subject(:chat) { described_class.new(client) }

  describe '#add_members' do
    context 'when successfully fetch messages' do
      it 'return message collection class' do
        expect(chat.add_members('channel_id', ['member'])).to be_an FlockOs::Collection::Message
      end
      
      it 'return message collection class' do
        allow_any_instance_of(FlockOs::Client).to receive(:post).and_return(stub_fetch_response)

        response = chat.fetch_messages('chat', 'user_uids')
        messages = response.collection
        message = messages.first

        expect(messages.count).to eq 1

        expect(message.text).to eq stub_fetch_response.first[:text]
        expect(message.from).to eq stub_fetch_response.first[:from]
        expect(message.to).to eq stub_fetch_response.first[:to]
        expect(message.uid).to eq stub_fetch_response.first[:uid]
      end
    end
  end

  describe '#send_message' do
    context 'when successfully send message' do
      it 'return message model class' do
        expect(chat.send_message(send_message_params)).to be_an FlockOs::Model::SendMessage
      end

      it 'return uuid' do
        allow_any_instance_of(FlockOs::Client).to receive(:post).and_return(stub_send_response)

        response = chat.send_message(send_message_params)
        
        expect(response.uid).to eq stub_send_response[:uid]
      end
    end
    
    pending 'when send message failed' do
      it 'uuid nil' do
        allow_any_instance_of(FlockOs::Client).to receive(:post).and_return({})

        response = chat.send_message(send_message_params)
        
        expect(response.uid).to eq nil
      end
    end
  end
end