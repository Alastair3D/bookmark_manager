require_relative '../lib/bkmks'

describe Bookmarks do
  describe '#all' do
    it 'returns al bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks).to include("http://google.com")
        expect(bookmarks).to include("http://facebook.com")
        end
    end
end
