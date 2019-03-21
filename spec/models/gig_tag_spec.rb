require 'rails_helper'

RSpec.describe GigTag, type: :model do

  before(:each) do 
    @gig_tag = FactoryBot.create(:gig_tag)    
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:gig_tag)).to be_valid
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@gig_tag).to be_a(GigTag)
    end

  end

  context "associations" do

    describe "user" do
      it { expect(@gig_tag).to belong_to(:gig) }
    end

    describe "user" do
      it { expect(@gig_tag).to belong_to(:tag) }
    end

  end
end