class House < ActiveRecord::Base
  attr_accessible :picture, :apartment, :balcony, :bathroom, :bedroom, :description, :dining, :foyer, :full, :kitchen, :laundry, :living, :lounge, :notes, :number, :pantry, :parlor, :porch, :residents, :screened_porch, :storage, :street, :study, :sun, :twin

  def self.search(search)
    search_condition = "%" + search + "%"
    # this is not currently specific to our model but i took it from the internet
    find(:all, :conditions => ['title LIKE ? or description LIKE ?', search_condition, search condition])
  end
end
