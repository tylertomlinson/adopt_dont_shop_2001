require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  it "can see all shelters" do
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

    visit "/shelters"

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content("Name: #{shelter_1.name}")

    expect(page).to have_content(shelter_2.name)
    expect(page).to have_content("Name: #{shelter_2.name}")
  end
end
