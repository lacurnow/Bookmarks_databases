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
    @bookmarks = [
      "http://www.google.com",
      "http://www.facebook.com",
      "http://www.twitter.com",
    ]
    erb :bookmarks
  end

  run! if app_file == $0
end
