require "rails_helper"

RSpec.feature "Widget management", :type => :feature do
=begin
describe "the sign_in process", type: :feature do
  before :each do
    User.create(email: 'user@example.com', password: 'password')
  end

  it "signs me in" do
    # on va sur la page de création d'utilisateurs
    visit '/users/sign_in'

    # dans le formulaire des users, on remplit les données qu'il faut
    within("#user") do
      fill_in 'Votre adresse mail', with: 'user@example.com'
      fill_in 'Votre mot de passe', with: 'password'
    end

    # clik clik
    click_button 'Connexion'

    # la page affichée devrait afficher des bonnes nouvelles
    expect(page).to have_content 'Success'
  end
end
=end
end