require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark_list'
require './lib/bookmark_list'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Home'
  end

  get '/bookmarks' do
    @new_bookmarklist = BookmarkList.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    BookmarkList.add(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
