# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Domain.destroy_all
domains = [
  {name: 'google.com', active: true},
  {name: 'youtube.com', active: true},
  {name: 'facebook.com', active: true},
  {name: 'yahoo.com', active: true}
]
domains.each do |domain|
  Domain.create(domain)
end
