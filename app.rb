require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark_list'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Home'
  end

  get '/bookmarks' do
    @list = BookmarkList.new
    @new_bookmarklist = @list.all
    erb :bookmarks
  end

  run! if app_file == $0
end
