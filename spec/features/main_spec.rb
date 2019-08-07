require_relative '../../app.rb'
feature "testing setting up our game" do
  scenario 'players can fill in their names and see them displayed' do
    visit('/')
    fill_in :first_user, with: "John"
    fill_in :second_user, with: "Jerry"
    click_button "Submit"
    expect(page).to have_content("John vs Jerry")
  end

end