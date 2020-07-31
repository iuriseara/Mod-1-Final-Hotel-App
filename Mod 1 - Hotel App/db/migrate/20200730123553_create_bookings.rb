class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :check_in
      t.date :check_out
      t.integer :guest_id
      t.integer :room_no
    end
  end
end
