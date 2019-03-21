require 'rails_helper'

RSpec.describe "bars/index.html.erb", type: :view do
=begin
  before(:each) do
    @bar = FactoryBot.create(:bar)
    @user = FactoryBot.create(:user)
    current_user = @user
    @cities = @bar.city
    @bars_search_by_my_user = @bar
    @bars = @bar
    bar = @bar
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
      assign(:bars,
      [
        build(:bar, name: "Bordeaux"),
        build(:bar, zip_code: "34000"),
        build(:bar),
        build(:bar)
      ]
    )

    render

    # vérifie que le name d'une des villes soit affiché
    expect(rendered).to match /Bordeaux/

    # vérifie que le zip_code d'une ville soit affiché
    expect(rendered).to match /34000/
    end
  end
=end
end