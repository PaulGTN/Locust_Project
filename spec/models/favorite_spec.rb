require 'rails_helper'

RSpec.describe Favorite, type: :model do

  before(:each) do 
    @favorite = FactoryBot.create(:favorite)    
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:favorite)).to be_valid
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@favorite).to be_a(Favorite)
    end

  end

  context "associations" do

    describe "user" do
      it { expect(@favorite).to belong_to(:user) }
    end

    describe "user" do
      it { expect(@favorite).to belong_to(:bar) }
    end

  end
end