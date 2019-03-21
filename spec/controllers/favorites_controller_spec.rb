require 'rails_helper'

RSpec.describe FavoritesController, type: :controller do
=begin
  before(:each) do 
    @user = FactoryBot.create(:user)
    @bar = FactoryBot.create(:bar)    
  end

  describe "POST #create" do
    # des tests
    context "with valid attributes" do
      it "creates a new user" do
        expect { 
          post :create, params: { user_id: @user.id, bar_id: @bar.id }
        }.to change(Favorite,:count).by(1)
      end
    end 
   
    context "with invalid attributes" do
      it "doest not create a new Favorite" do
        expect { 
          post :create, params: { user_id: nil, bar_id: @bar.id }
        }.to_not change(Favorite, :count)
      end
    end
  end

describe "DELETE #destroy" do
# des tests
end
=end
end