class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :house_id
      t.integer :user_id
      t.text :note

      t.timestamps
    end
  end
end
