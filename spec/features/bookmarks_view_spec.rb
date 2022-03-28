feature 'Viewing bookmarks' do
  scenario 'shows bookmarks' do
    visit ('/bookmarks')
    expect(page).to have_content 'Bookmark Viewer'
  end
end