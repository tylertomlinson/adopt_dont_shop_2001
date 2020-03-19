puts "seeding the dev database"

Shelter.destroy_all

Shelter.create(name: "Pet Palace", address:  "12483 Jefferson Drive", city:     "Denver", state:    "CO", zip:      "80205")


Shelter.create(name: "ZIFGGY FAIRN", address:  "irnrinrinrin", city:     "Denver", state:    "CO", zip:      "80205")



puts "Created #{Shelter.count} Shelters"
