require 'sinatra/base'
require 'bkmks'

class Bookmarks < Sinatra::base

  get '/' do
    erb(:index)
  end
