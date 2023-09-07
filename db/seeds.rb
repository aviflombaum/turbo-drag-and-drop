# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Track.create(name: "Whitney Houston - I Will Always Love You")
Track.create(name: "Bryan Adams - (Everything I Do) I Do It For You")
Track.create(name: "Celine Dion - My Heart Will Go On")
Track.create(name: "Adele - Someone Like You")
Track.create(name: "John Legend - All of Me")
Track.create(name: "Sir Mix A Lot - Baby Got Back")
Track.create(name: "Salt-N-Pepa - Push It")
Track.create(name: "Vanilla Ice - Ice Ice Baby")
Track.create(name: "MC Hammer - U Can't Touch This")
Track.create(name: "TLC - Waterfalls")
