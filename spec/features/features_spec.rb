feature 'Testing infrastructure' do
  scenario 'Can run app & check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working'
  end
end

feature 'Viewing Bookmarks' do
  scenario 'A user can see bookmarks' do
    visit ('/bookmarks')
    expect(page).to have_content "http://google.com"
  end
end
