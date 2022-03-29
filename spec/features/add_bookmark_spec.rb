feature 'Add a new bookmark to list' do
  scenario 'a user wants to add a new bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.test-url.com')
    click_button('Submit')

    expect(page).to have_content 'http://www.test-url.com'
  end
end