# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do |c|
  Client.create(first_name: Faker::Name.first_name,
                orders_count: Faker::Number.number(1))
end

10.times do |a|
  Address.create(street: Faker::Address.street_name,
  city: Faker::Address.city,
  state: Faker::Address.state,
  username: Faker::Name.name)
end

10.times do |o|
  Order.create(item: Faker::Lorem.word,
  quantity: Faker::Number.number(1),
  number:Faker::Number.number(5))
end

10.times do |r|
  Role.create(username: Faker::Name.first_name,
  role: Faker::Name.first_name)
end
