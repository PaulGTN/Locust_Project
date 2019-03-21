require 'rails_helper'

RSpec.describe "gigs/show", type: :view do

  before(:each) do
    @gig = FactoryBot.create(:gig)
    @bar = FactoryBot.create(:bar)
  end

  context 'it says gig_name' do
    it "displays 'gig_name'" do
      # dit à la view que @user sera le build d'un utilisateur avec "lol@email.com" comme email
  
      # génère la vue (ceci doit être fait après avoir assigné la variable d'instance, pour qu'il puisse la trouver)
      render
      
      # la vue rendered doit afficher l'email passé
      expect(rendered).to match /Marylin Momo/
    end
  end

  context 'it says Quand' do
    it "displays 'Quand'" do
      # génére la page
      render
  
      # le contenu "Bievenue" doit être dans la page
      expect(rendered).to have_content 'Quand'
    end
  end


end
