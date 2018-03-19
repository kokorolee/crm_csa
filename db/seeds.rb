# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Domain.destroy_all
domains = [
  {name: 'google.com'},
  {name: 'youtube.com'},
  {name: 'facebook.com'},
  {name: 'yahoo.com'}
]
domains.each do |domain|
  Domain.create(domain)
end
