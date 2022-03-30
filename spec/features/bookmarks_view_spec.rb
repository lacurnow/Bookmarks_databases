feature 'Viewing bookmarks' do
  scenario 'shows bookmarks' do
    BookmarkList.add(url: "http://www.google.com", title: 'Google')
    BookmarkList.add(url: "http://www.facebook.com", title: 'Facebook')
    BookmarkList.add(url: "http://www.twitter.com", title: 'Twitter')

    visit ('/bookmarks')

    expect(page).to have_link('Google', href: 'http://www.google.com')
    expect(page).to have_link('Facebook', href: 'http://www.facebook.com')
    expect(page).to have_link('Twitter', href: 'http://www.twitter.com')
  end
end