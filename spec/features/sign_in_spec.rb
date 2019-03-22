require 'rspec/rails'
require 'capybara/rails'

describe "the signin process", type: :feature do
  it 'sign me in' do

    visit 'users/sign_in'
    fill_in "user[email]", with: "testing@email.com"
    fill_in "user[password]", with: "motdepasse"
    click_button "Connexion"

    expect(page).to have_content('Connexion')

  end
end