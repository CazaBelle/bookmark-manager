def add_url_and_submit
  visit('/')
  fill_in :url, with: 'makers.tech'
  click_button('submit')
end