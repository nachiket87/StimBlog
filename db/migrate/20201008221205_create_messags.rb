class CreateMessags < ActiveRecord::Migration[6.0]
  def change
    create_table :messags do |t|
      t.string :content

      t.timestamps
    end
  end
end
