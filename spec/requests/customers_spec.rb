require 'rails_helper'

RSpec.describe "Customers", type: :request do
  number_of_customers = 10

  before(:each) do
    FactoryBot.create_list(:customer, number_of_customers)
  end

  describe "GET /customers" do
    it "returns a successful response" do
      get customers_path

      expect(response).to have_http_status(200)
      expect(response.content_type).to eq('application/json; charset=utf-8')

      expected_count = number_of_customers
      response_data = JSON.parse(response.body)
      expect(response_data.length()).to eq(expected_count)
    end
  end

  describe "GET /customers/:id" do
    it "returns a successful response" do
      customer = Customer.first

      get "/customers/#{customer.id}"

      expect(response).to have_http_status(200)
      expect(response.content_type).to eq('application/json; charset=utf-8')

      response_data = JSON.parse(response.body)
      expect(response_data["email"]).to eq(customer.email)
    end
  end

  describe "POST /customers" do
    it "returns a successful response" do
      species = create(:species)
      breed = create(:breed)
      customer_hash = { "name" => "John Doe", "address" => "123 bay", "email" => "b@gmail.com", "phone" => "123456", "registration_date" => Date.today, "status" => "current", "notification_type" => "sms", "species_id" => species.id, "breed_id" => breed.id }

      post '/customers', params: customer_hash

      expect(response).to have_http_status(201)
      expect(response.content_type).to eq('application/json; charset=utf-8')

      response_data = JSON.parse(response.body)
      expect(response_data["email"]).to eq(customer_hash["email"])
    end
  end
end
