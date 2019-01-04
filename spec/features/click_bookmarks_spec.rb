feature 'visits url' do
  scenario 'when user click on url takes to page' do 
    visit('/')
    fill_in :url, with: 'www.google.co.uk'
    click_button('submit')
    click_link('www.google.co.uk')
    expect(current_path == 'https://www.google.co.uk')
  end 
end 