require 'rails_helper'

RSpec.describe Tag, type: :model do

  before(:each) do 
    @tag = FactoryBot.create(:tag)    
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:tag)).to be_valid
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@tag).to be_a(Tag)
    end

    describe "#name" do
      it { expect(@tag).to validate_presence_of(:name) }
    end

  end

  context "associations" do

    describe "tags" do
      it { expect(@tag).to have_many(:gig_tags) }
    end

  end

  context "public instance methods" do

    describe "#name" do

      it "should return a string" do
        expect(@tag.name).to be_a(String)
      end

      it "should return the full name" do
        expect(@tag.name).to eq("Disco-funk")
        tag_2 = create(:tag, name: "Métal")
        expect(tag_2.name).to eq("Métal")
      end
    end

  end

end