require 'bookmark_list'

RSpec.describe BookmarkList do
  it 'returns an empty bookmark list' do
    result = BookmarkList.all
    expect(result).to eq []
  end

  it 'returns a list of bookmarks from the db' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.facebook.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.twitter.com');")

    new_bookmarklist = BookmarkList.all
    expect(new_bookmarklist).to include 'http://www.google.com'
    expect(new_bookmarklist).to include 'http://www.facebook.com'
    expect(new_bookmarklist).to include 'http://www.twitter.com'
  end
end
