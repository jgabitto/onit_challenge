class AppointmentsController < ApplicationController
    before_action :set_appointment, only: [:show, :destroy]

    # GET /appointments
    def index
        @appointments = Appointment.all.order("id ASC")
        render json: @appointments, include: appointment_options
    end

    # GET /appointments/:id
    def show
        render json: @appointment, include: appointment_options
    end

    # POST /appointments
    def create
        pet = Pet.find_by(name: params[:pet_name], birth_date: params[:birth_date], breed_id: params[:breed_id])
        customer = Customer.find_by(name: params[:name], email: params[:email])

        if pet == nil && customer == nil
            customer = Customer.create!({ name: params[:name], address: params[:address], email: params[:email], phone: params[:phone], registration_date: Date.today, status: "current", notification_type: params[:notification_type]})
            Pet.create!({ customers: [customer], name: params[:pet_name], birth_date: params[:birth_date], gender: params[:gender], species_id: params[:species_id], breed_id: params[:breed_id], data: nil})
        elsif customer == nil
            customer = Customer.create!({ name: params[:name], address: params[:address], email: params[:email], phone: params[:phone], registration_date: Date.today, status: "current", notification_type: params[:notification_type]})
            pet.customers = [*pet.customers, customer]
        elsif pet == nil
            pet = Pet.create!({ customers: [customer], name: params[:pet_name], birth_date: params[:birth_date], gender: params[:gender], species_id: params[:species_id], breed_id: params[:breed_id], data: nil})
            customer.pets = [*customer.pets, pet]
        end

        appointment = Appointment.create!({ "pet_id": pet.id, "post_summary": params[:post_summary], "notes": params[:notes], "start_time": params[:start_time], "end_time": params[:end_time], "doctor_id": params[:doctor_id]})

        render json: appointment, status: :created, include: appointment_options
    end

    # DELETE /appointments/:id
    def destroy
      @appointment.destroy
      head :no_content
    end

    private

    def appointment_options
        ['pet', 'doctor', 'bill', 'prescriptions', 'appointment_services', 'services']
    end

    def set_appointment
        @appointment = Appointment.find_by(id: params[:id])
    end
end
