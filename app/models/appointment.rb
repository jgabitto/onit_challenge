class Appointment < ApplicationRecord
    belongs_to :pet
    belongs_to :doctor

    has_one :bill
end
