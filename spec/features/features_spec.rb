require 'pg'

feature 'Viewing Bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://google.com');")

    visit ('/bookmarks')

    expect(page).to have_content "http://makersacademy.com"
    expect(page).to have_content "http://destroyallsoftware.com"
    expect(page).to have_content "http://google.com"
  end
end


feature 'Adding a new bookmark' do
  scenario 'A user can add a url to bookmarks' do
    visit ('/bookmarks')
    click_on "Add new bookmark"
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')
    expect(page).to have_content 'http://testbookmark.com'
  end
end
