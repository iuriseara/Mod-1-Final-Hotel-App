require 'pry'

class Guest < ActiveRecord::Base
    has_many :bookings
    has_many :rooms, through: :bookings


    def self.login(firstname, lastname)
        Guest.create(first_name: firstname, last_name: lastname)
    end

    # def self.availability
    #     Booking.all.find_by(available: true)
    # end

    def self.availability
        Booking.all.select { |key| key.available == true }
    end

    def self.book_a_room(date)
        Booking.create(guest_id: nil , room_id: nil, available: false , when: date)
    end



end
