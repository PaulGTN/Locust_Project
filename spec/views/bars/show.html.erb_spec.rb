require 'rails_helper'

RSpec.describe "bars/show", type: :view do
  before(:each) do
    @bar = FactoryBot.create(:bar)
  end

  context 'it shows "user details"' do
    it "displays 'user details'" do
      assign(:bar, build(:bar, name: "Lolita", city: "Paris", id: 4))
      # génére la page
      render
  
      # le contenu "Bievenue" doit être dans la page
      expect(rendered).to match /Lolita/
      expect(rendered).to match /Paris/
    end
  end
end
