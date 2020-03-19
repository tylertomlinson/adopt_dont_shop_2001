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
