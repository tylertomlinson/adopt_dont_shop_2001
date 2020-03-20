require "rails_helper"

RSpec.describe "shelters index page", type: :feature do
  it "can create shelter" do

    visit "/shelters"

    expect(page).to have_link("Create New Shelter")
  end

  it "will be taken to '/shelters/new'" do

    visit "/shelters"

    click_link "Create New Shelter"

    expect(current_path).to eq("/shelters/new")
  end

  it "can see a form for a new shelter" do

    visit "/shelters/new"

    expect(page).to have_selector("form")
    expect(page).to have_field("Name")
    expect(page).to have_field("Address")
    expect(page).to have_field("City")
    expect(page).to have_field("State")
    expect(page).to have_field("Zip")
  end

  it "can send POST request and new shelter is listed" do

    visit "shelters/new"

    fill_in "Name", with: "Test Shelter"
    fill_in "Address", with: "123 Main Street"
    fill_in "City", with: "Denver"
    fill_in "State", with: "CO"
    fill_in "Zip", with: "80205"

    click_button "Submit"

    expect(current_path).to eq("/shelters")
    expect(page).to have_content("Test Shelter")
  end

end
