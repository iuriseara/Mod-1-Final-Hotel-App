class Booking < ActiveRecord::Base
    belongs_to :guest
    belongs_to :room

    
end