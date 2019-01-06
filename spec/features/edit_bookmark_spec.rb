feature 'edit bookmark' do
  scenario 'user can change bookmark' do 
    add_url_and_submit
    click_button('edit')
    fill_in :url, with: 'www.google.co.uk'
    click_button('save')
    expect(page).to have_link 'www.google.co.uk'
  end 
end 