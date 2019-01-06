feature 'delete bookmark' do
  scenario 'user can delete a bookmark' do 
    add_url_and_submit
    click_button('delete')
    expect(page).not_to have_link('makers.tech')
  end 
end 