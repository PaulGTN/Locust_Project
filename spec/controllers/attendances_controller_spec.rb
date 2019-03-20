require 'rails_helper'

RSpec.describe AttendancesController, type: :controller do

  describe "POST #create" do
    # des tests
   
    context "with invalid attributes" do
      it "doest not create a new attendance" do
        expect { 
          post :create, params: { "attendance" => { gig: nil } }
        }.to_not change(Attendance, :count)
      end
    end
  end

  describe "DELETE #destroy" do
    # des tests
  end

end