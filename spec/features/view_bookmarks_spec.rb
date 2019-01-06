feature 'views bookmarks' do 
  scenario 'user can go to / and add a bookmarks' do
    add_url_and_submit
    expect(page).to have_content('makers.tech')
  end
end