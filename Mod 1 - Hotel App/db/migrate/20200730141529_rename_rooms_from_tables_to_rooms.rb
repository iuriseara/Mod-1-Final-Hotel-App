class RenameRoomsFromTablesToRooms < ActiveRecord::Migration[6.0]
  def change
    rename_table :tables, :rooms
  end
end
