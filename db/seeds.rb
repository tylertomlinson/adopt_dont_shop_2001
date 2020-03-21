Shelter.destroy_all
Pet.destroy_all

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

Pet.create(           image: "https://i.imgur.com/wKls5bM.png",
                      name:  "Ziggy",
                      age: "1",
                      sex: "male",
                      shelter_id: (Shelter.first.id))

Pet.create(           image: "https://i.imgur.com/wKls5bM.png",
                      name:  "Ziggy2",
                      age: "2",
                      sex: "male",
                      shelter_id: (Shelter.second.id))


puts "Created #{Shelter.count} Shelters"
puts "Created #{Pet.count} Shelters"
