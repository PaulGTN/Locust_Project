FactoryBot.define do
  factory :gig do
    name { "Marylin Momo"}
    date { "30/03/2018 19:00 UTC"}
    bar { FactoryBot.create(:bar)}
  end
end
