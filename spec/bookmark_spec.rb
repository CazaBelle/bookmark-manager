require './lib/bookmark'

RSpec.describe Bookmark do
  let(:bookmark) {described_class.create(url: "makers.tech")}

  describe '#create' do 
    it 'returns the values in the array' do 
      expect(bookmark.url).to include('makers.tech') 
      
    end 
  end 
end 