class CustomersController < ApplicationController
    before_action :set_customer, only: [:show, :destroy]

    # GET /customers
    def index
        @customers = Customer.all.order("id ASC")
        render json: @customers, include: customer_options
    end

    # GET /customers/:id
    def show
        render json: @customer, include: customer_options
    end

    # POST /customers
    def create
        customer = Customer.create!({ name: params[:name], address: params[:address], email: params[:email], phone: params[:phone], registration_date: Date.today, status: "current", notification_type: params[:notification_type]})
        pet = Pet.create!({ customers: [customer], name: params[:pet_name], birth_date: Date.today, gender: params[:gender], species_id: params[:species_id], breed_id: params[:breed_id], data: nil})

        render json: customer, status: :created, include: customer_options
    end

    private

    def customer_options
        ['pets', 'pets.species', 'pets.breed']
    end

    def set_customer
        @customer = Customer.find_by(id: params[:id])
    end
end
