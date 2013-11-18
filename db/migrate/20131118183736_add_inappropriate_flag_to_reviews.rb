class AddInappropriateFlagToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :innapropriate_flag, :boolean
  end
end
