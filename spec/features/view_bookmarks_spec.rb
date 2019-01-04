feature 'views bookmarks' do 
  scenario 'user can go to /bookmarks and see a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content('https://makers.tech')
  end
end