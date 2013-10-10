class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :user_id
      t.text :content
      t.integer :house_id
      t.integer :stars

      t.timestamps
    end
  end
end
