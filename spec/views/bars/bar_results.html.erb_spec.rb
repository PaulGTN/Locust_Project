require 'rails_helper'

RSpec.describe "bars/bar_results", type: :view do
  before(:each) do
    @bar = FactoryBot.create(:bar)
    @bars_search_by_my_user = @bar
  end

  context 'it shows "bar details"' do
    it "displays 'bar details'" do
      # génére la page
      render
  
      # le contenu "Bievenue" doit être dans la page
      expect(rendered).to have_content(:name)
      expect(rendered).to have_content(:city)
      expect(rendered).to have_content(:zip_code)
      expect(rendered).to have_content(:adress)
    end
  end
end
