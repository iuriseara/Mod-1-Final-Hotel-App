class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :tables do |t|
      t.string :room_type
    end
  end
end
