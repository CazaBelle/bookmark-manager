feature 'visit index page' do
  scenario 'user can visit the index page' do
    visit('/')
    expect(page).to have_content('Welcome to Bookmark Manager') 
  end 
end