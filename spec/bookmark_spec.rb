require './lib/bookmark'

RSpec.describe Bookmark do
  describe '#all' do 
    it 'returns the values in the array' do 
      expect(subject.all).to include('https://makers.tech') 
      expect(subject.all).to include('https://codebar.io/') 
      expect(subject.all).to include('https://github.com/') 
    end 
  end 
end 