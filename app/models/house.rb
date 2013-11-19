class House < ActiveRecord::Base
  attr_accessible :picture, :apartment, :balcony, :bathroom, :bedroom, :description, :dining, :foyer, :full, :kitchen, :laundry, :living, :lounge, :notes, :number, :pantry, :parlor, :porch, :residents, :screened_porch, :storage, :street, :study, :sun, :twin
  has_many :reviews

  def self.search(street, residents)



    if street or residents.to_i != 0 # both
      where('street LIKE ? AND residents LIKE ?', "%#{street}%", "%#{residents}%")
    else
      Array.new   # don't display anything.
    end
  end
end
