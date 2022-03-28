require 'bookmark_list'

RSpec.describe BookmarkList do
  xit 'returns an empty bookmark list' do
    new_bookmarklist = BookmarkList.new
    result = new_bookmarklist.all
    expect(result).to eq []
  end

  it 'returns a list of bookmarks from the db' do
    new_bookmarklist = BookmarkList.all
    expect(new_bookmarklist).to include 'http://www.google.com'
    expect(new_bookmarklist).to include 'http://www.facebook.com'
    expect(new_bookmarklist).to include 'http://www.twitter.com'
  end
end