# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.create(name: "Lyon", zip_code: "69003")
10.times do |index|
  City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
  puts "#{index+1} city created"
end

User.create(
  first_name: "Lucas",
  last_name: "Lensi",
  description: "A bien detesté cette journée...",
  email: "lucas.lensi@gmail.com",
  age: 23,
  city: City.find(1)
)

10.times do |index|
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.paragraphs,
    email: Faker::Internet.free_email,
    age: Faker::Number.between(from: 10, to: 60),
    city: City.find(rand(1..10))
  )
    puts "#{index+1} user created"
end

20.times do |index|
  Gossip.create(title: Faker::Quote.yoda, content: Faker::Lorem.paragraphs, user: User.find(rand(1..10)))
  puts "#{index+1} gossip created"
end

10.times do |index|
  Tag.create(title: Faker::Quote.singular_siegler)
  puts "#{index+1} tag created"
end

40.times do |index|
  TagGossip.create(tag: Tag.find(rand(1..10)), gossip: Gossip.find(rand(1..20)))
  puts "#{index+1} gossip taggé"
end

#50.times do |index|
#  pm = PrivateMessage.new(content: Faker::Lorem.paragraphs)
#  pm.sender = User.find(rand(1..10))
#  pm.recipient = User.find(rand(1..10))
#  pm.save
#end
