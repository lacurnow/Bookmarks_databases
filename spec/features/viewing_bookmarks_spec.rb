feature 'Viewing bookmarks' do
  scenario 'shows bookmarks' do
    visit ('/')
    expect(page).to have_content 'Bookmark Viewer'
  end
end