class House < ActiveRecord::Base
  attr_accessible :picture, :apartment, :balcony, :bathroom, :bedroom, :description, :dining, :foyer, :full, :kitchen, :laundry, :living, :lounge, :notes, :number, :pantry, :parlor, :porch, :residents, :screened_porch, :storage, :street, :study, :sun, :twin
  has_many :reviews
  has_many :favorites

  def self.search(street, residents, full, twin, laundry, porch, sun)
    a = Array.new
    if street != '' and residents != '' # if we have street and residents
      if full == '' and twin == '' # neither specified
        a = where('street = ? AND residents = ?', street, residents)
      elsif full == '' and twin != ''   # twin specified but full not
        a = where('street = ? AND residents = ? AND twin = ?', street, residents, twin)
      elsif full != '' and twin == ''   # full specified but twin not
        a = where('street = ? AND residents = ? AND full = ?', street, residents, full)
      else
        a = where('street = ? AND residents = ? AND full = ? AND twin = ?', street, residents, full, twin)
      end
    elsif street != '' and residents == ''
      # same queries, no residents query
      if full == '' and twin == '' # neither specified
        a = where('street = ?', street)
      elsif full == '' and twin != ''   # twin specified but full not
        a = where('street = ? AND twin = ?', street, twin)
      elsif full != '' and twin == ''   # full specified but twin not
        a = where('street = ? AND full = ?', street, full)
      else
        a = where('street = ? AND full = ? AND twin = ?', street, full, twin)
      end
    elsif street == '' and residents != ''
      # same queries, no street array
      if full ='' and twin == '' # neither specified
        a = where('residents =?', residents)
      elsif full == '' and twin != ''
        a = where('residents = ? AND twin = ?', residents, twin)
      elsif full != '' and twin == ''
        a = where('residents = ? AND full = ?', residents, full)
      else 
        a = where('residents = ? AND full = ? AND twin = ?', residents, full, twin)
      end
    end


    if a != Array.new and (laundry or porch or sun)
      a = a.where('laundry = ? or porch = ? or sun = ?', laundry, porch, sun)
    elsif laundry or porch or sun
      a = where('laundry = ? or porch = ? or sun = ?', laundry, porch, sun)
    end
    return a
  end
end
