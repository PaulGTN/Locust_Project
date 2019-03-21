FactoryBot.define do
  factory :bar_tag do
    bar { FactoryBot.create(:bar)}
    tag { FactoryBot.create(:tag)}
    
  end
end
