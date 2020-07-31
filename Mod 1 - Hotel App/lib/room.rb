class Room < ActiveRecord::Base
    has_many :bookings
    has_many :guests, through: :bookings

end