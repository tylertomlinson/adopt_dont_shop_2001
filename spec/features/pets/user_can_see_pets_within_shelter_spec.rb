require 'rails_helper'

RSpec.describe "shelter pets index page", type: :feature do
  before(:each) do

    @shelter_1 = Shelter.create(name:     "Test",
                                address:  "123 Test Test",
                                city:     "Denver",
                                state:    "CO",
                                zip:      "80205")

    @shelter_2 = Shelter.create(name:    "Test Paradise",
                                address: "Test",
                                city:    "Denver",
                                state:   "CO",
                                zip:     "80232")

    @pet_1 = @shelter_1.pets.create(image: "https://i.imgur.com/wKls5bM.png",
                        name:  "Ziggy",
                        age: "1",
                        sex: "male")

    @pet_2 = @shelter_1.pets.create(image: "https://i.imgur.com/wKls5bM.png",
                        name:  "Ziggy2",
                        age: "2",
                        sex: "male")

    @pet_3 = @shelter_2.pets.create(image: "https://i.imgur.com/wKls5bM.png",
                        name:  "Zig245",
                        age: "5",
                        sex: "male",)

    @pet_4 = @shelter_2.pets.create(image: "https://i.imgur.com/wKls5bM.png",
                        name:  "Ziggydfsad2",
                        age: "5",
                        sex: "male")
  end

  it "can see all pets from shelter" do

    visit "/shelters/#{@shelter_1.id}/pets"
    expect(page).to have_css("img[src*='#{@pet_1.image}']")
    expect(page).to have_content(@pet_1.name)
    expect(page).to have_content(@pet_1.age)
    expect(page).to have_content(@pet_1.sex)

    expect(page).to have_css("img[src*='#{@pet_2.image}']")
    expect(page).to have_content(@pet_2.name)
    expect(page).to have_content(@pet_2.age)
    expect(page).to have_content(@pet_2.sex)

    expect(page).not_to have_content(@pet_3.name)
    expect(page).not_to have_content(@pet_4.name)

    visit "/shelters/#{@shelter_2.id}/pets"

    expect(page).to have_content(@pet_4.name)
    expect(page).to have_content(@pet_4.age)
    expect(page).to have_content(@pet_4.sex)

    # expect(page).not_to have_content(@pet_1.age)
    # expect(page).not_to have_content(@pet_2.age)

  end
end
