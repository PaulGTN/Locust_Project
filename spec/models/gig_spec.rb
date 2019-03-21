require 'rails_helper'

RSpec.describe Gig, type: :model do

  before(:each) do 
    @gig = FactoryBot.create(:gig)    
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:gig)).to be_valid
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@gig).to be_a(Gig)
    end

    describe "#name" do
      it { expect(@gig).to validate_presence_of(:name) }
    end

  end

  context "associations" do

    describe "bar" do
      it { expect(@gig).to belong_to(:bar) }
    end

  end

  context "public instance methods" do

    describe "#name" do

      it "should return a string" do
        expect(@gig.name).to be_a(String)
      end

      it "should return the full name" do
        expect(@gig.name).to eq("Marylin Momo")
        gig_2 = create(:gig, name: "Cramps")
        expect(gig_2.name).to eq("Cramps")
      end
    end
  end

end