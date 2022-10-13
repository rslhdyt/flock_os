require 'spec_helper'

describe FlockOs::Collection::ChannelMember do
  let(:channel_members) do
    (1..3).map do |n|
      {
        userId: "u:#{n}",
        affiliation: "member"
      }
    end
  end

  subject(:collection) { described_class.new(channel_members) }

  describe '#initialize' do
    context 'without show public profile' do
      it 'return described class' do
        expect(collection).to be_an described_class
      end
      
      it 'collection is not empty' do
        expect(collection.collection).to be_an Array
      end
      
      it 'first collection has correct attributes' do
        first_collection = collection.collection.first

        expect(first_collection.user_id).to eq 'u:1'
        expect(first_collection.affiliation).to eq 'member'
        expect(first_collection.public_profile).to eq nil
      end
    end

    context 'with show public profile' do
      let(:channel_members) do
        (1..3).map do |n|
          {
            userId: "u:#{n}",
            affiliation: "member",
            publicProfile: {
              id: "u:#{n}",
              firstName: "Nicole #{n}",
              lastName: "Sullivan",
              profileImage: "https://i.flockusercontent.com/xxxxxx"
            }
          }
        end
      end

      it 'return described class' do
        expect(collection).to be_an described_class
      end
      
      it 'collection is not empty' do
        expect(collection.collection).to be_an Array
      end
      
      it 'first collection has correct attributes' do
        first_collection = collection.collection.first

        expect(first_collection.user_id).to eq 'u:1'
        expect(first_collection.affiliation).to eq 'member'
        expect(first_collection.public_profile).to be_an Hash
        expect(first_collection.public_profile[:firstName]).to eq 'Nicole 1'
      end
    end
  end
end
