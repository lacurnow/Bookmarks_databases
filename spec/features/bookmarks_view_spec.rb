feature 'Viewing bookmarks' do
  scenario 'shows bookmarks' do
    BookmarkList.add("http://www.google.com")
    BookmarkList.add("http://www.facebook.com")
    BookmarkList.add("http://www.twitter.com")

    visit ('/bookmarks')
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.facebook.com'
    expect(page).to have_content 'http://www.twitter.com'
  end
end