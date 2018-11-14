class Parking < ApplicationRecord
  has_many :bookings
  belongs_to :profile
end
