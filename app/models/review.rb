class Review < ActiveRecord::Base
  attr_accessible :content, :house_id, :stars, :title, :user_id
end
