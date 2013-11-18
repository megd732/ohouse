class AddUsefulFlagToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :useful_flag, :boolean
  end
end
