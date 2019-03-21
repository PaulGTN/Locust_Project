require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do 
    @user = FactoryBot.create(:user)    
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:user)).to be_valid
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
    end

    describe "#first_name" do
      it { expect(@user).to validate_presence_of(:first_name) }
    end

  end

  context "associations" do

    describe "attendances" do
      it { expect(@user).to have_many(:attendances) }
    end

  end

  context "public instance methods" do

    describe "#first_name" do

      it "should return a string" do
        expect(@user.first_name).to be_a(String)
      end

      it "should return the full first_name" do
        expect(@user.first_name).to eq("Jean")
        user_2 = create(:user, first_name: "Loulou")
        expect(user_2.first_name).to eq("Loulou")
      end
    end

  end

end