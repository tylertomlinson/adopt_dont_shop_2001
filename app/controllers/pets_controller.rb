class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def create
     pet = Pet.new ({
      image: params[:image],
      name: params[:name],
      approximate_age: params[:approximate_age],
      sex: params[:sex],
      shelter: params[:shelter]})

    pet.save

    redirect_to "/pets"
  end
end
