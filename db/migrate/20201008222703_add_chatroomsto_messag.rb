class AddChatroomstoMessag < ActiveRecord::Migration[6.0]
  def change
    remove_column :messags, :chatroom_id
    add_reference :messags, :chatroom, foreign_key: true
  end
end
