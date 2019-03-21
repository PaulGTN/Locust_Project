require 'rails_helper'

RSpec.describe Attendance, type: :model do

  before(:each) do 
    @attendance = FactoryBot.create(:attendance)    
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:attendance)).to be_valid
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@attendance).to be_a(Attendance)
    end

  end

  context "associations" do

    describe "user" do
      it { expect(@attendance).to belong_to(:user) }
    end

    describe "user" do
      it { expect(@attendance).to belong_to(:gig) }
    end

  end
end