require 'sinatra/base'
require './lib/bkmks'

class BookmarkManager < Sinatra::Base

get '/bookmarks' do
  @bookmarks = Bookmarks.all
    erb(:index)
  end

  get '/bookmarks/new' do
    erb(:new)
  end

  post '/bookmarks' do
    Bookmarks.add(params[:url])
    redirect '/bookmarks'
  end

  run if app_file == $0

end
