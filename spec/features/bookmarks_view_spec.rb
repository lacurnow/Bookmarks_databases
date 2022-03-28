feature 'Viewing bookmarks' do
  scenario 'shows bookmarks' do
    visit ('/bookmarks')
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.facebook.com'
    expect(page).to have_content 'http://www.twitter.com'
  end
end