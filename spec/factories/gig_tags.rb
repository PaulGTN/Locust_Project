FactoryBot.define do
  factory :gig_tag do
    gig { FactoryBot.create(:gig)}
    tag { FactoryBot.create(:tag)}
    
  end
end
