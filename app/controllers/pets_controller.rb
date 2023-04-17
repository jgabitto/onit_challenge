class PetsController < ApplicationController
    before_action :set_pet, only: [:show, :destroy]

    # GET /pets
    def index
        @pets = Pet.all.order("id ASC")
        render json: @pets, include: pet_options
    end

    # GET /pets/:id
    def show
        render json: @pet, include: pet_options
    end

    # POST /pets
    def create
        pet = Pet.create!({ name: params[:name], birth_date: params[:birth_date], gender: params[:gender], species_id: params[:species_id], breed_id: params[:breed_id], data: nil})

        render json: pet, status: :created, include: pet_options
    end

    # DELETE /pets/:id
    def destroy
      @pet.destroy
      head :no_content
    end

    private

    def pet_options
        ['customers', 'species', 'breed']
    end

    def set_pet
        @pet = Pet.find_by(id: params[:id])
    end
end
