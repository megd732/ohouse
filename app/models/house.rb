class House < ActiveRecord::Base
  attr_accessible :picture, :apartment, :balcony, :bathroom, :bedroom, :description, :dining, :foyer, :full, :kitchen, :laundry, :living, :lounge, :notes, :number, :pantry, :parlor, :porch, :residents, :screened_porch, :storage, :street, :study, :sun, :twin
  has_many :reviews

  def self.search(search)
    if search
      where('street LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
