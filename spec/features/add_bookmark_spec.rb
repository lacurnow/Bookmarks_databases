feature 'Add a new bookmark to list' do
  scenario 'when a user wants to add a new bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.test-url.com')
    fill_in('title', with: 'Test Title')
    click_button('Submit')

    expect(page).to have_link('Test Title', href: 'http://www.test-url.com')
  end
end