require 'bookmark_list'

RSpec.describe BookmarkList do
  it 'returns an empty bookmark list' do
    result = BookmarkList.all
    expect(result).to eq []
  end

  it 'returns a list of bookmarks from the db' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    bookmark = BookmarkList.add(url: "http://www.google.com", title: 'Google')
    BookmarkList.add(url: "http://www.facebook.com", title: 'Facebook')
    BookmarkList.add(url: "http://www.twitter.com", title: 'Twitter')

    new_bookmarklist = BookmarkList.all
    
    expect(new_bookmarklist.length).to eq 3
    expect(new_bookmarklist.first).to be_a Bookmark 
    #Bookmark instance
    expect(new_bookmarklist.first.id).to eq bookmark.id
    expect(new_bookmarklist.first.title).to eq 'Google'
    expect(new_bookmarklist.first.url).to eq 'http://www.google.com'
  end

  describe '.add' do
    it 'adds a new bookmark to the list' do
      list = BookmarkList.add(url: 'http://www.test-url.com', title: 'Test Title')
      expect(list.url).to eq 'http://www.test-url.com'
      expect(list.title).to eq 'Test Title'
    end
  end
end
