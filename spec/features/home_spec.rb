feature 'Viewing bookmarks' do
  scenario 'shows bookmarks' do
    visit ('/')
    expect(page).to have_content 'Home'
  end
end