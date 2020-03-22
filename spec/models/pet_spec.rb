require 'rails_helper'

describe Pet, type: :model do
  before(:each) do

    @shelter_1 = Shelter.create(name:     "Pet Palace",
                                address:  "12483 Jefferson Drive",
                                city:     "Denver",
                                state:    "CO",
                                zip:      "80205")

    @shelter_2 = Shelter.create(name:    "Pet Paradise",
                                address: "4876 Mountain View",
                                city:    "Denver",
                                state:   "CO",
                                zip:     "80232")

    @pet_1 = Pet.create(image: "https://i.imgur.com/wKls5bM.png",
                        name:  "Ziggy",
                        age: "1",
                        sex: "undecided",
                        shelter_id: (@shelter_1.id))

    @pet_2 = Pet.create(image: "https://i.imgur.com/wKls5bM.png",
                        name:  "Ziggy2",
                        age: "2",
                        sex: "undecided",
                        status: "adopatble",
                        shelter_id: (@shelter_2.id))
  end

  describe "validations" do
    it { should validate_presence_of :image }
    it { should validate_presence_of :name }
    it { should validate_presence_of :desc }
    it { should validate_presence_of :age }
    it { should validate_presence_of :sex }
    it { should validate_presence_of :status }
  end

  describe "relationships" do
    it { should belong_to :shelter }
  end
end
