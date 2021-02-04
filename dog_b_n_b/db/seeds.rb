# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Dog.destroy_all
DogSitter.destroy_all
City.destroy_all

100.times do
  dog = Dog.create!(name: Faker::GreekPhilosophers.name)
  dog_sitter = DogSitter.create!(name: Faker::Name.first_name)
  city = City.create!(name: Faker::Address.city)
end

100.times do
  stroll = Stroll.create!(
    dog_id: Dog.all.sample.id, 
    dog_sitter_id: DogSitter.all.sample.id,
    city_id: City.all.sample.id)
end