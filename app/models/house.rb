class House < ActiveRecord::Base
  attr_accessible :apartment, :balcony, :bathroom, :bedroom, :description, :dining, :foyer, :full, :kitchen, :laundry, :living, :lounge, :notes, :number, :pantry, :parlor, :porch, :residents, :screened_porch, :storage, :street, :study, :sun, :twin
end
