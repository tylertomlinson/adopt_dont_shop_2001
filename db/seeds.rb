# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shelter.destroy_all
 
Shelter.create(       name:     "Pet Palace",
                      address:  "12483 Jefferson Drive",
                      city:     "Denver",
                      state:    "CO",
                      zip:      "80205")


Shelter.create(       name:     "Save a Pet",
                      address:  "38372 Main",
                      city:     "Fort Collins",
                      state:    "CO",
                      zip:      "80205")


puts "Created #{Shelter.count} Shelters"
