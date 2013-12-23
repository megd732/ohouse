class AddUserToReview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :user
    end
  end
end