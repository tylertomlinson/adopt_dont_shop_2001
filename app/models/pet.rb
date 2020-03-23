class Pet < ApplicationRecord
  belongs_to :shelter,  dependent: :delete

  validates_presence_of :image, :name, :age, :sex, :description, :status
end
