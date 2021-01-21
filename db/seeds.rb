# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning house :)"
Flat.destroy_all
# Restaurant.destroy_all
puts "done cleaning "

10.times do
  Flat.create!(
    name: Faker::TvShows::Buffy.character,
    address: Faker::Address.full_address,
    description: Faker::TvShows::Buffy.quote,
    price_per_night: rand(70..178),
    number_of_guests: rand(1..4)
  )
  puts "made #{Flat.last.name}"
end
puts "finished flats"
