require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
=begin
  before(:each) do 
    @user = FactoryBot.create(:user)    
  end

  describe "GET #new" do
    # des tests
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "renders the new template" do
      # va sur index
      get :new
  
      # on doit rediriger vers index
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
    # des tests
   
    context "with invalid attributes" do
      it "doest not create a new session" do
        expect { 
          post :create, params: { "session" => { user: nil } }
        }.to_not change(User, :count)
      end
    end
  end

  describe "DELETE #destroy" do
    # des tests
  #  before(:each) do 
  #    @session = FactoryBot.create(:session)    
  #  end
    
  #  it "deletes the session" do
  #    expect{
  #      delete :destroy, id: @session        
  #    }.to change(Session, :count).by(-1)
  #  end
  end
=end
end