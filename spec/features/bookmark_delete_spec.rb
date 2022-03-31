feature 'bookmark deletion' do
  scenario 'the user wants to delete a bookmark from the list' do
    BookmarkList.add(url: 'http://www.test-url.com', title: 'Test Title')
    visit ('/bookmarks')
    expect(page).to have_link('Test Title', href: 'http://www.test-url.com')

    first('.bookmark').click_button('Delete')
    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Test Title', href: 'http://www.test-url.com')
  end
end