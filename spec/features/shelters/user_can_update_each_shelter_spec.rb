require 'rails_helper'

RSpec.describe "shelter update process", type: :feature do
  before(:each) do
    @shelter_1 = Shelter.create(
                                name:     "Pet Palace",
                                address:  "12483 Jefferson Drive",
                                city:     "Denver",
                                state:    "CO",
                                zip:      "80205")

  end

  it "can take a user to '/shelters/:id/edit'" do

    visit "/shelters/#{@shelter_1.id}"

    click_link 'Edit'

    expect(current_path).to eq("/shelters/#{@shelter_1.id}/edit")
  end

  it "can see a form to edit shelter's data" do

    visit "/shelters/#{@shelter_1.id}/edit"

    expect(page).to have_selector("form")
    expect(page).to have_field("shelter[name]", with: @shelter_1.name)
    expect(page).to have_field("shelter[address]", with: @shelter_1.address)
    expect(page).to have_field("shelter[city]", with: @shelter_1.city)
    expect(page).to have_field("shelter[state]", with: @shelter_1.state)
    expect(page).to have_field("shelter[zip]", with: @shelter_1.zip)
  end

  it "can complete update with PATCH and redirect" do

    visit "/shelters/#{@shelter_1.id}/edit"

    fill_in "shelter[name]", with: "Testing Update"

    click_button "Submit"

    expect(current_path).to eq("/shelters/#{@shelter_1.id}")
    expect(page).to have_content("Testing Update")
    expect(page).to_not have_content("Pet Palace")
  end
end
