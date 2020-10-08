class AddChatroomtoMessag < ActiveRecord::Migration[6.0]
  def change
    add_column :messags, :chatroom_id, :integer 
  end
end
