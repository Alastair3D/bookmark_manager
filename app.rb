require 'sinatra/base'
require './lib/bkmks'

class BookmarkManager < Sinatra::Base

  get '/' do
    @bookmarks = Bookmarks.all
    erb(:index)
  end

get '/bookmarks' do
  @bookmarks = Bookmarks.all
    erb(:index)
  end

  run if app_file == $0

end
