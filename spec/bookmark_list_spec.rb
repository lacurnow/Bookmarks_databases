require 'bookmark_list'

RSpec.describe BookmarkList do
  it 'returns a list of bookmarks' do
    new_bookmarklist = BookmarkList.new
    result = new_bookmarklist.all
    expect(result).to eq []
  end
end