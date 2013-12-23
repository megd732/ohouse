class Favorite < ActiveRecord::Base
  attr_accessible :house_id, :note, :user_id
end
