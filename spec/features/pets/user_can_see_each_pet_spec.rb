require 'rails_helper'

RSpec.describe "pets index page", type: :feature do
  it "can see each pet with image name age sex shelter" do
    shelter_1 = Shelter.create(name:     "Pet Palace",
                               address:  "12483 Jefferson Drive",
                               city:     "Denver",
                               state:    "CO",
                               zip:      "80205")

    shelter_2 = Shelter.create(name:    "Pet Paradise",
                               address: "4876 Mountain View",
                               city:    "Denver",
                               state:   "CO",
                               zip:     "80232")

    pet_1 = Pet.create(image: "https://i.imgur.com/wKls5bM.png",
                       name:  "Ziggy",
                       age: "1",
                       sex: "male",
                       shelter_id: (shelter_1.id))

    pet_2 = Pet.create(image: "https://i.imgur.com/wKls5bM.png",
                       name:  "Ziggy2",
                       age: "2",
                       sex: "male",
                       shelter_id: (shelter_2.id))

    visit '/pets'

    expect(page).to have_css("img[src*='#{pet_1.image}']")
    expect(page).to have_content(pet_1.name)
    expect(page).to have_content(pet_1.age)
    expect(page).to have_content(pet_1.sex)
    expect(page).to have_content(pet_1.shelter.name)

    expect(page).to have_css("img[src*='#{pet_2.image}']")
    expect(page).to have_content(pet_2.name)
    expect(page).to have_content(pet_2.age)
    expect(page).to have_content(pet_2.sex)
    expect(page).to have_content(pet_2.shelter.name)
  end
end
