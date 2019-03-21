require 'rails_helper'

RSpec.describe AttendancesController, type: :controller do

  before(:each) do 
    @user = FactoryBot.create(:user)
    @gig = FactoryBot.create(:gig)     
  end

  describe "POST #create" do
    # des tests
    context "with valid attributes" do
      it "creates a new user" do
        expect { 
          post :create, params: { user_id: @user.id, gig_id: @gig.id }
        }.to change(Attendance,:count).by(1)
      end
    end 
   
    context "with invalid attributes" do
      it "doest not create a new attendance" do
        expect { 
          post :create, params: { user_id: nil, gig_id: @gig.id }
        }.to_not change(Attendance, :count)
      end
    end
  end

  describe "DELETE #destroy" do
    # des tests
  #  before(:each) do 
  #    @attendance = FactoryBot.create(:attendance)    
  #  end
    
  #  it "deletes the attendance" do
  #    expect{
  #      delete :destroy, id: @attendance        
  #    }.to change(Attendance, :count).by(-1)
  #  end
  end

end