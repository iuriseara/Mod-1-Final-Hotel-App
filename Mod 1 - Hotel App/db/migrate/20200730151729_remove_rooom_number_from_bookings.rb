class RemoveRooomNumberFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :room_no, :integer
  end
end
