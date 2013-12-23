class Favorite < ActiveRecord::Base
  attr_accessible :house_id, :note, :user_id
  belongs_to :user
  belongs_to :house
end
