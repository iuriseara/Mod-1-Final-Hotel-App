class CreateRoomIdInBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings , :room_id, :integer
  end
end
