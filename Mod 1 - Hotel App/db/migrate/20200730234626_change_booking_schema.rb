class ChangeBookingSchema < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :check_in, :date
    remove_column :bookings, :check_out, :date
    add_column :bookings, :available, :boolean
  end
end
