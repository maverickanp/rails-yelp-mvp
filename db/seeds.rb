# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
# Check for the environment
if Rails.env.development?
  Restaurant.destroy_all
end

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Tlinta e Tlês',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '12345678',
    category:        'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '987654321',
    category:        'belgium'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'