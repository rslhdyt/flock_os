require 'spec_helper'

describe FlockOs::Helpers do
  before do
    @util = described_class
  end

  describe '#underscore' do
    it 'convert cammel case to underscore' do
      expect(@util.underscore('BananaChocoCheese')).to eq 'banana_choco_cheese'
    end
  end
end