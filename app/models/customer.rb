class Customer < ApplicationRecord
    has_many :customer_pets
    has_many :pets, through: :customer_pets

    validates :name, presence: true
    validates :registration_date, presence: true
    validates :status, presence: true
    validates :notification_type, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
