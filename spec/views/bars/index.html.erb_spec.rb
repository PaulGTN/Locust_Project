require 'rails_helper'

RSpec.describe "bars/index.html.erb", type: :view do

  before(:each) do
    @bar = FactoryBot.create(:bar)
    @user = FactoryBot.create(:user)
  end

  context 'it says LES NOUVEAUX BARS' do
    it "displays 'LES NOUVEAUX BARS'" do
      # génére la page
      render
  
      # le contenu "Bievenue" doit être dans la page
      expect(rendered).to have_content 'LES NOUVEAUX BARS'
    end
  end

  context 'it shows "bar details"' do
    it "displays 'bar details'" do
      # génére la page
      render
  
      # le contenu "Bievenue" doit être dans la page
      expect(rendered(@bar)).to have_content(:name)
      expect(rendered(@bar)).to have_content(:city)
      expect(rendered(@bar)).to have_content(:zip_code)
      expect(rendered(@bar)).to have_content(:adress)
    end
  end

end