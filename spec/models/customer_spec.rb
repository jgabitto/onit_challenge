require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'returns the name for a customer' do
    customer = build(:customer, name: "john doe")

    expect(customer.name).to eq "john doe"
  end

  it 'returns the address for a customer' do
    customer = build(:customer, address: "123 rails lane")

    expect(customer.address).to eq "123 rails lane"
  end

  it 'returns the email for a customer' do
    customer = build(:customer, email: "john@gmail.com")

    expect(customer.email).to eq "john@gmail.com"
  end

  it 'returns the phone for a customer' do
    customer = build(:customer, phone: "713234567")

    expect(customer.phone).to eq "713234567"
  end

  it 'returns the registration_date for a customer' do
    registration_date = Date.today
    customer = build(:customer, registration_date: registration_date)

    expect(customer.registration_date).to eq registration_date
  end

  it 'returns the notification type for a customer' do
    customer = build(:customer, notification_type: "sms")

    expect(customer.notification_type).to eq "sms"
  end

  it 'returns the status for a customer' do
    customer = build(:customer, status: "current")

    expect(customer.status).to eq "current"
  end

  it 'does not have a name' do
    customer = build(:customer, name: nil)

    expect(customer).to_not be_valid
  end

  it 'has a name' do
    customer = build(:customer)

    expect(customer).to be_valid
  end

  it 'does not have a registration_date' do
    customer = build(:customer, registration_date: nil)

    expect(customer).to_not be_valid
  end

  it 'has a registration_date' do
    customer = build(:customer)

    expect(customer).to be_valid
  end

  it 'does not have a status' do
    customer = build(:customer, status: nil)

    expect(customer).to_not be_valid
  end

  it 'has a status' do
    customer = build(:customer)

    expect(customer).to be_valid
  end

  it 'does not have a notification_type' do
    customer = build(:customer, notification_type: nil)

    expect(customer).to_not be_valid
  end

  it 'has a notification_type' do
    customer = build(:customer)

    expect(customer).to be_valid
  end

  it 'does not have a email' do
    customer = build(:customer, email: nil)

    expect(customer).to_not be_valid
  end

  it 'has a email' do
    customer = build(:customer)

    expect(customer).to be_valid
  end
  
  it 'has a valid email' do
    customer = build(:customer, email: "a@gmail.com")

    expect(customer).to be_valid
  end

  it 'does not have a valid email' do
    customer = build(:customer, email: "12345")

    expect(customer).to_not be_valid
  end
end
