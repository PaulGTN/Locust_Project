require 'rails_helper'

RSpec.describe BarTag, type: :model do

  before(:each) do 
    @bar_tag = FactoryBot.create(:bar_tag)    
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:bar_tag)).to be_valid
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@bar_tag).to be_a(BarTag)
    end

  end

  context "associations" do

    describe "user" do
      it { expect(@bar_tag).to belong_to(:bar) }
    end

    describe "user" do
      it { expect(@bar_tag).to belong_to(:tag) }
    end

  end
end