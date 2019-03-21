require 'rails_helper'

RSpec.describe Price, type: :model do

  before(:each) do 
    @price = FactoryBot.create(:price)    
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:price)).to be_valid
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@price).to be_a(Price)
    end

    describe "#price_range" do
      it { expect(@price).to validate_presence_of(:price_range) }
    end

  end

  context "associations" do

    describe "bars" do
      it { expect(@price).to have_many(:bars) }
    end

  end

  context "public instance methods" do

    describe "#price_range" do

      it "should return a string" do
        expect(@price.price_range).to be_a(String)
      end

      it "should return the full price_range" do
        expect(@price.price_range).to eq("Moyen")
        price_2 = create(:price, price_range: "Cher")
        expect(price_2.price_range).to eq("Cher")
      end
    end

  end

end