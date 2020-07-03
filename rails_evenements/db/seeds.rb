require 'faker'

# User.destroy_all

User.create!(
  first_name: 'Michel',
  last_name: 'Dugland',
  email: 'tidiyew595@mailcupp.com',
  password: '12012119'
)

10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence,
    email: Faker::Name.first_name + "#{rand(9999)}@yopmail.com",
    password: 'password'
  )
end

1.times do
  Event.create!(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.sentence,
    start_date: Faker::Date.forward(days: 90),
    duration: rand(1..3)*5*600,
    price: rand(1..1000),
    location: Faker::Address.city
    )
end