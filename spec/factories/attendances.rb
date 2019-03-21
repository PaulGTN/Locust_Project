FactoryBot.define do
  factory :attendance do
    user { FactoryBot.create(:user)}
    gig { FactoryBot.create(:gig)}
    
  end
end
