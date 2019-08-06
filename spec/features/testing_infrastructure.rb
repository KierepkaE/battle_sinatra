require_relative '../../app.rb'
feature "testing our infrastructure" do
  scenario 'page have specific content' do
    visit('/')
  expect(page).to have_content "Testing infrastructure working!"
  end


end