class Review < ActiveRecord::Base
  attr_accessible :content, :house_id, :stars, :title, :user_id, :inappropriate_flag, :useful_flag, :funny_flag
  belongs_to :house
  belongs_to :user

end
