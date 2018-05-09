require_relative '../lib/bkmks'

describe Bookmarks do

  context '#all' do
    it 'Bookmarks responds to #all' do
      bookmarks = Bookmarks.new
      expect(bookmarks.initial_array).to respond_to(:all?)
    end
  end
end
