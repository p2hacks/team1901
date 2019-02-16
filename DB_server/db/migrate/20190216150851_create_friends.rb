class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.string :id
      t.string :userid
      t.string :frindid

      t.timestamps
    end
  end
end
