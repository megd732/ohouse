class AddFunnyFlagToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :funny_flag, :boolean
  end
end
