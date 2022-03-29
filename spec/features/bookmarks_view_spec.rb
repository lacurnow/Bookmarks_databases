feature 'Viewing bookmarks' do
  scenario 'shows bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.facebook.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.twitter.com');")

    visit ('/bookmarks')
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.facebook.com'
    expect(page).to have_content 'http://www.twitter.com'
  end
end