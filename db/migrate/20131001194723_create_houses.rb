class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :street
      t.integer :number
      t.integer :residents
      t.text :description
      t.integer :full
      t.integer :twin
      t.text :notes
      t.string :apartment
      t.integer :dining
      t.integer :kitchen
      t.integer :living
      t.integer :bathroom
      t.integer :bedroom
      t.integer :lounge
      t.integer :sun
      t.integer :porch
      t.integer :pantry
      t.integer :study
      t.integer :laundry
      t.integer :foyer
      t.integer :storage
      t.integer :screened_porch
      t.integer :balcony
      t.integer :parlor

      t.timestamps
    end
  end
end
