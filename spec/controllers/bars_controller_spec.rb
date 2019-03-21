require 'rails_helper'

RSpec.describe BarsController, type: :controller do

  before(:each) do 
    @bar = FactoryBot.create(:bar)    
  end

  describe "GET #index" do
    # des tests
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  
    it "renders the index template" do
      # va sur index
      get :index
  
      # on doit rediriger vers index
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    # des tests
    it "returns http success" do
      get :show, params: { id: @bar.id }
      expect(response).to have_http_status(:success)
    end
  end

=begin
  describe "GET #new" do
    # des tests
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    # des tests
  end

  describe "POST #create" do
    # des tests
  end

  describe "PUT #update" do
    # des tests
  end

  describe "DELETE #destroy" do
    # des tests
  end
=end
end