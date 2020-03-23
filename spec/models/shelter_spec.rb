require 'rails_helper'

describe Shelter, type: :model do
  before(:each) do

    @shelter_1 = Shelter.create(name:     "Pet Palace",
                                address:  "12483 Jefferson Drive",
                                city:     "Denver",
                                state:    "CO",
                                zip:      "80205")

    @pet_1 = Pet.create(image: "https://i.imgur.com/wKls5bM.png",
                        name:  "Ziggy",
                        age: "1",
                        sex: "male",
                        shelter_id: (@shelter_1.id))

    @pet_2 = Pet.create(image: "https://i.imgur.com/wKls5bM.png",
                        name:  "Ziggy2",
                        age: "2",
                        sex: "male",
                        shelter_id: (@shelter_1.id))
  end

  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :address}
    it {should validate_presence_of :city}
    it {should validate_presence_of :state}
    it {should validate_presence_of :zip}
  end

  describe "relationships" do
    it {should have_many :pets}
  end
end
