feature 'Viewing Bookmarks' do
  scenario 'A user can see bookmarks' do
    visit ('/bookmarks')
    expect(page).to have_content "http://makersacademy.com"
  end
end
