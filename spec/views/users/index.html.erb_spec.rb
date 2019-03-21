require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    @user = FactoryBot.create(:user)
  end

  context 'it shows "user details"' do
    it "displays 'user details'" do
      assign(:user, build(:user, email: "lol@email.com", id: 4))
      # génére la page
      render
  
      # le contenu "Bievenue" doit être dans la page
      expect(rendered).to match /lol@email.com/
    end
  end
end
