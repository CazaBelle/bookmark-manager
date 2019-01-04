feature 'views bookmarks' do 
  scenario 'user can go to / and see a list of bookmarks' do
    visit('/')
    fill_in :url, with: 'makers.tech'
    click_button('submit')
    expect(page).to have_content('makers.tech')
end