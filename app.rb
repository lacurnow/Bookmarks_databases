require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Home'
  end

  get '/bookmarks' do
    "Bookmark Viewer"
  end

  run! if app_file == $0
end