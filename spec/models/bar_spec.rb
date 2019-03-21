require 'rails_helper'

RSpec.describe Bar, type: :model do

  before(:each) do 
    @bar = FactoryBot.create(:bar)    
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:bar)).to be_valid
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@bar).to be_a(Bar)
    end

    describe "#name" do
      it { expect(@bar).to validate_presence_of(:name) }
    end

    describe "#city" do
    it { expect(@bar).to validate_presence_of(:city) }
    end

  end

  context "associations" do

    describe "price" do
      it { expect(@bar).to belong_to(:price) }
    end

  end

  context "public instance methods" do

    describe "#name" do

      it "should return a string" do
        expect(@bar.name).to be_a(String)
      end

      it "should return the full name" do
        expect(@bar.name).to eq("Lolita")
        bar_2 = create(:bar, name: "Machine")
        expect(bar_2.name).to eq("Machine")
      end
    end
  end

end