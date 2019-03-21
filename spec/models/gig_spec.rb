require 'rails_helper'

RSpec.describe Gig, type: :model do

  before(:each) do
    @gig = Gig.create(name: 'live', date: '2019-03-23')
  end

  context "validations" do

    it "is valid with valid attributes" do
      expect(@gig).to be_a(Gig)
      expect(@gig).to be_valid
    end

    describe "#name" do
      it "should not be valid without name" do
        gig = Gig.create(name: 'live', date: '2019-03-23')
        expect(gig).to be_valid
        expect(gig.errors.include?(:date)).to eq(false)
      end
    end

    describe "#date" do
      it "should not be valid without last_name" do
        gig = Gig.create(date: '2019-03-23', name: 'live')
        expect(gig).to be_valid
        expect(gig.errors.include?(:name)).to eq(false)
      end
    end

    context "associations" do

      describe "bars" do
              it "should have_many :bars" do
                attendance = Bars.create(gig: @gig)
                expect(@gig.attendances.include?(attendance)).to eq(false)
              end
      end
    end

end

end
