require_relative '../lib/bkmks'
require 'pg'

describe Bookmarks do
  describe '#all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

          connection.exec("INSERT INTO bookmarks VALUES(1, 'http://makersacademy.com');")
          connection.exec("INSERT INTO bookmarks VALUES(2, 'http://destroyallsoftware.com');")
          connection.exec("INSERT INTO bookmarks VALUES(3, 'http://google.com');")

        expected_bookmarks = [
          'http://makersacademy.com',
          'http://destroyallsoftware.com',
          'http://google.com'
        ]

        expect(Bookmarks.all).to eq expected_bookmarks
        end
    end
end
