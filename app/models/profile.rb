class Profile < ApplicationRecord
belongs_to :user
has_many :bookings, dependent: :destroy
has_many :parkings
end
