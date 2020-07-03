require 'faker'

Gossip.destroy_all

10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email(domain: 'lol.fr'),
    password_digest: Faker::Internet.password(min_length: 10, max_length: 20)
  )
end

20.times do
  Gossip.create!(
    title: Faker::Hipster.sentence,
    content: Faker::GreekPhilosophers.quote,
    user: User.all.sample
  )
end

20.times do
  Comment.create!(
    gossip: Gossip.all.sample,
    content: Faker::Lorem.sentence
  )
end