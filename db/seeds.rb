# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Bar.destroy_all
Gig.destroy_all
Tag.destroy_all
Price.destroy_all
GigTag.destroy_all
BarTag.destroy_all
Attendance.destroy_all

puts 'Start seeding...'

1.times do 
  price = Price.create!(price_range: "moyen")
end
puts "1 range created"

15.times do 
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: SecureRandom.urlsafe_base64)
end
puts "15 users created"

10.times do 
  tag = Tag.create!(name: Faker::Music.genre)
end 
puts "10 tags created"

10.times do 
  bar = Bar.create!(name: Faker::Music.album, adress: Faker::Address.street_address, zip_code: Faker::Address.zip_code, city: Faker::Address.city ,price_id: Price.all.ids.sample)
end 
puts "10 bars created"

20.times do 
  gig = Gig.create!(name: Faker::Music.band, date: Faker::Date.forward(10), bar_id: Bar.all.ids.sample)
end
puts "20 gigs created"

5.times do 
  gig_tag = GigTag.create!(tag_id: Tag.all.ids.sample, gig_id: Gig.all.ids.sample)
end
puts "5 gig-tags created"

5.times do 
  bar_tag = BarTag.create!(tag_id: Tag.all.ids.sample, bar_id: Bar.all.ids.sample)
end
puts "5 bar-tags created"

20.times do
  attendance = Attendance.create!(user_id: User.all.ids.sample, gig_id: Gig.all.ids.sample)
end
puts "20 attendances created"