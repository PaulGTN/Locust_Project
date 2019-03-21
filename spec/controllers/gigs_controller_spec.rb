require 'rails_helper'

RSpec.describe GigsController, type: :controller do

  before(:each) do 
    @gig = FactoryBot.create(:gig)    
  end

  describe "GET #show" do
    # des tests
    it "returns http success" do
      get :show, params: { id: @gig.id }
      expect(response).to have_http_status(:success)
    end

    it "renders the index template" do
      # va sur index
      get :show, params: { id: @gig.id }
  
      # on doit rediriger vers index
      expect(response).to render_template("show")
    end
  end
end