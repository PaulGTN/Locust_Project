FactoryBot.define do
  factory :bar do
    name { "Lolita" }
    adress { "20 rue du Lol"}
    city { "Paris"}
    zip_code { "75000" }
    description { "Trop super"}
    price { FactoryBot.create(:price)}
    
  end
end
