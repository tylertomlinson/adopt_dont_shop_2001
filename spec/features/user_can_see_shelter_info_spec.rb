require "rails_helper"

RSpec.describe "shelter show page", type: :feature do
  it "can see shelter with name address city state zip" do
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


    visit "/shelters/#{shelter_1.id}"

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content("Address: #{shelter_1.address}")
    expect(page).to have_content("City: #{shelter_1.city}")
    expect(page).to have_content("State: #{shelter_1.state}")
    expect(page).to have_content("Zip: #{shelter_1.zip}")


    visit "/shelters/#{shelter_2.id}"

    expect(page).to have_content(shelter_2.name)
    expect(page).to have_content("Address: #{shelter_2.address}")
    expect(page).to have_content("City: #{shelter_2.city}")
    expect(page).to have_content("State: #{shelter_2.state}")
    expect(page).to have_content("Zip: #{shelter_2.zip}")
  end
end
