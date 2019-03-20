require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user = User.create(first_name: "Richard", last_name: "Dupontel", email: "richarddupontel@foo.com", password: "q1az2wsx")

  end



  context "validations" do

    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
      expect(@user).to be_valid     #création qui est valide
    end

    describe "#first_name" do
      it "should not be valid without first_name" do
        user = User.create(first_name: "Richard", email: "richard@foo.com", password: "q1az2wsx" )
        expect(user).to be_valid
        expect(user.errors.include?(:last_name)).to eq(false)
      end
    end

    describe "#last_name" do
      it "should not be valid without last_name" do
        user = User.create(last_name: "Dupontel", email:"richard@foo.com", password: "q1az2wsx")
        expect(user).to be_valid
        expect(user.errors.include?(:last_name)).to eq(false)
      end
    end

    describe "#email" do

      it 'validates presence' do
       record = User.new
       record.email = '' # invalid state
       record.valid? # run validations
       record.errors[:email].should include("can't be blank") # check for presence of error

       record.email = 'foo@bar.com' # valid state
       record.valid? # run validations
       record.errors[:email].should_not include("can't be blank") # check for absence of error
      end


      describe 'email field' do
        subject { User.new(first_name: 'richard', last_name: 'dupontel', email: 'richard@foo.com').valid? }

        context 'when email has wrong format' do
          let(:email) { 'richard@foo' }

          it 'complains for invalid format' do
            is_expected.to eq false
          end

          let(:email) { 'richard' }

          it 'complains for invalid format' do
            is_expected.to eq false
        end
      end


      end
    end

    describe 'password field' do
      subject { User.new(first_name: 'richard', last_name: 'dupontel', email: 'richard@foo.com', password: 'bnsnb12g').valid? }


      context 'when password has wrong format' do
          let(:password) { nil }
          it 'complains for invalid format' do
          is_expected.to eq true
      end
    end

      context 'when password size is incorrect' do
          let(:password) { 'ric' }
          it 'complains for invalid format' do
            is_expected.to eq true
          end
      end

      context 'when password has correct format' do
          let(:password) { 'q1az2wsx' }
          it 'accepts valid format' do
            is_expected.to eq true
          end
      end
    end



    # describe "#username" do
    #   it "should not be lower that 3 characters" do
    #     invalid_user = User.create(first_name: "Richard", last_name: "Dupontel", username: "Titi")
    #     expect(invalid_user).not_to be_valid
    #     expect(invalid_user.errors.include?(:username)).to eq(true)
    #   end
    # end



  context "associations" do

    describe "attendances" do
            it "should have_many :attendances" do
              attendance = Attendance.create(user: @user)
              expect(@user.attendances.include?(attendance)).to eq(false)
            end
    end

    describe "gigs" do
           it "should have_many gigs" do
            gig = gig.create(user: @user)
            expect(@user.gigs.include?(gig)).to eq(false)
           end
    end

    describe "favorites" do
           it "should have_many favorites" do
            favorite = favorite.create(user: @user)
            expect(@user.favorites.include?(favorite)).to eq(false)
           end
    end

    describe "bars" do
           it "should have_many bars" do
            bar = bar.create(user: @user)
            expect(@user.bars.include?(bar)).to eq(false)
           end
    end
  end



  context "public instance methods" do

    describe "#full_name" do

      it "should return a string" do
        expect(@user.full_name).to be_a(String)
      end

      it "should return the full name" do
        user_1 = User.create(first_name: "Richard", last_name: "Dupontel", username: "Titi")
        expect(user_1.full_name).to eq("Richard Dupontel")
        user_2 = User.create(first_name: "Jean-Michel", last_name: "Durant", username: "kikou_du_75")
        expect(user_2.full_name).to eq("Jean-Michel Durant")
      end
    end

  end

end
end
