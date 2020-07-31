class AddIdToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :room_num, :integer
  end
end
