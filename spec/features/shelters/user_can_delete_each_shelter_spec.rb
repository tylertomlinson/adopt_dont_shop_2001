require 'rails_helper'

RSpec.describe "shelter delete process", type: :feature do
  it "can complete deletion with DELETE and redirect" do
    shelter_1 = Shelter.create(
                                name:     "Pet Palace",
                                address:  "12483 Jefferson Drive",
                                city:     "Denver",
                                state:    "CO",
                                zip:      "80205")

    visit "/shelters/#{shelter_1.id}"

    click_link "Delete"

    expect(current_path).to eq("/shelters")
    expect(page).to_not have_content(shelter_1.name)
  end
end
