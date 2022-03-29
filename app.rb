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
    @new_bookmarklist = BookmarkList.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    url = params['url']
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}');")
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
