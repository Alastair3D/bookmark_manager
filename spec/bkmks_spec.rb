require_relative '../lib/bkmks'

describe Bookmarks do
  describe '#all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmarks.all
        expect(bookmarks).to include("http://makersacademy.com")
        expect(bookmarks).to include("http://bbc.com")
        end
    end
end
