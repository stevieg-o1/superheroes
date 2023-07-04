# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding..."

# 5.times do
  heroes1 = Hero.create(name: Faker::Name.name, super_name: Faker::Name.name)
  heroes2 = Hero.create(name: Faker::Name.name, super_name: Faker::Name.name)
  heroes3 = Hero.create(name: Faker::Name.name, super_name: Faker::Name.name)
  heroes4 = Hero.create(name: Faker::Name.name, super_name: Faker::Name.name)
  heroes5 = Hero.create(name: Faker::Name.name, super_name: Faker::Name.name)


# 5.times do
  powers1 = Power.create(name: Faker::Name.name, description: Faker::Markdown.emphasis)
  powers2 = Power.create(name: Faker::Name.name, description: Faker::Markdown.emphasis)
  powers3 = Power.create(name: Faker::Name.name, description: Faker::Markdown.emphasis)
  powers4 = Power.create(name: Faker::Name.name, description: Faker::Markdown.emphasis)
  powers5 = Power.create(name: Faker::Name.name, description: Faker::Markdown.emphasis)

  HeroPower.create(hero_id: heroes1.id, power_id: powers1.id, strength: "Strong")
  HeroPower.create(hero_id: heroes2.id, power_id: powers2.id, strength: "Weak")
  HeroPower.create(hero_id: heroes1.id, power_id: powers3.id, strength: "Strong")
  HeroPower.create(hero_id: heroes3.id, power_id: powers1.id, strength: "Average")
  HeroPower.create(hero_id: heroes4.id, power_id: powers3.id, strength: "Weak")


  puts "Done seeding!"