FactoryBot.define do
  factory :user do
    first_name { "Jean"}
    last_name { "Bon" }
    email { Faker::Internet.email  }
    password { "xxx111" }
    
  end
end
