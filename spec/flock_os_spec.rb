require 'spec_helper'

describe FlockOs do
  describe '#new' do
    it 'return alias of FlockOs::Client' do
      expect(described_class.new).to be_an described_class::Client
    end
  end

  describe 'config' do
    context 'when set config using block' do
      it 'return correct value' do
        described_class.configure do |config|
          config.token = 'token'
        end

        expect(described_class.config.token).to eq 'token'
      end
    end

    context 'when set config using options' do
      it 'return correct value' do
        client = described_class.new({ token: 'token' })

        expect(described_class.config.token).to eq 'token'
      end
    end
  end
end