class Residence < ActiveRecord::Base
  attr_accessible :apt_number, :description, :full_bed, :laundry, :notes, :number, :number_bedrooms, :street_name, :twin_bed
  # add: downstairs, upstairs
end
