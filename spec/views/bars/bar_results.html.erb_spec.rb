require 'rails_helper'

RSpec.describe "bars/bar_results", type: :view do
=begin  
  before(:each) do
    @bar = FactoryBot.create(:bar)
    @bars_search_by_my_user = @bar.city
    @user = FactoryBot.create(:user)
    current_user = @user.id

  end

  context 'it shows "bar results"' do
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
=end
end
