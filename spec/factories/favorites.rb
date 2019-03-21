FactoryBot.define do
  factory :favorite do
    bar { FactoryBot.create(:bar)}
    user { FactoryBot.create(:user)}
    
  end
end
