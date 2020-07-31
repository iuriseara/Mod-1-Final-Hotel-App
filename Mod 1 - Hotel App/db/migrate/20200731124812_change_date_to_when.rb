class ChangeDateToWhen < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :date, :when
  end
end
