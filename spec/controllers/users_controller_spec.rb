require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  before(:each) do 
    @user = FactoryBot.create(:user)    
  end

  describe "GET #show" do
  # des tests
  it "returns http success" do
    get :show, params: { id: @user.id }
    expect(response).to have_http_status(:success)
  end

  it "renders the show template" do
    # va sur index
    get :show, params: { id: @user.id }

    # on doit rediriger vers index
    expect(response).to render_template("show")
  end
end

end






  