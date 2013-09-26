class CreateResidences < ActiveRecord::Migration
  def change
    create_table :residences do |t|
      t.string :street_name
      t.integer :number
      t.string :apt_number
      t.integer :number_bedrooms
      t.string :description
      t.boolean :laundry
      t.string :notes
      t.integer :full_bed
      t.integer :twin_bed

      t.timestamps
    end
  end
end
