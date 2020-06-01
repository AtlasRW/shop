require 'faker'

Item.destroy_all

puts "Seeding database"

# Génération des items
20.times do
  Item.create!(
    title: Faker::Creature::Cat.name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    price: rand(1..1000),
    image_url: Faker::Creature::Cat.image(grayscale: true))
end
puts "-> some items have been generated "

puts "Done !"
