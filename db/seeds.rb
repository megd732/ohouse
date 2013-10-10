# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# TODO: Parse houses.txt here.

def parse_line(arr, rooms)
  arr.each {|x|     # for each word in the line
    x = x.strip.downcase
    count = 0
    temp = /[(]\w[)]/.match(x)      # check for parentheses, get number of rooms
    if temp
      count = Integer(temp[0][1,temp[0].length-2])
      x = x[0,x.length-3].strip          # get rid of parens
    else
      count = 1
    end
    if rooms.has_key?(x)
      rooms[x] += count
    else
      rooms[x] = count
    end
  }
  return rooms
end

# Variables to populate model with. Save model and clear vars when --- hit.
street, number, residents, full, twin, notes, apartment = nil
description = ""
rooms = {}

# Want to iterate through lines until we match "--+"
File.open("public/houses.txt").each do |line|
  if /^---/.match(line)
    # save model
    House.create(:street => street, :number => number, :residents => residents, :full => full, :twin => twin,
      :notes => notes, :apartment => apartment, :description => description, :dining => rooms["dining room"],
      :kitchen => rooms["kitchen"], :living => rooms["living room"], :bathroom => rooms["bathroom"],
      :bedroom => rooms["bedroom"], :lounge => rooms["lounge"], :sun => rooms["sun room"],
      :porch => rooms["porch"], :pantry => rooms["pantry"], :study => rooms["study"], :laundry => rooms["laundry room"],
      :foyer => rooms["foyer"], :storage => rooms["storage"], :screened_porch => rooms["screened porch"],
      :balcony => rooms["balcony"], :parlor => rooms["parlor"], :picture => "houses/" + street.downcase + "/" + number.to_s + ".jpg")
    # clear fields
    street, number, residents, full, twin, notes, apartment = nil
    description = ""
    rooms = {}
  elsif /^Street/.match(line)
    street = line["Street: ".length, line.length-"Street: ".length].chomp.strip
  elsif /^Number/.match(line)
    number = line["Number: ".length, line.length-"Number: ".length].chomp.strip
  elsif /^Residents/.match(line)
    residents = line["Residents: ".length, line.length-"Residents: ".length].chomp.strip
  elsif /^Full/.match(line)
    full = Integer(line["Full: ".length, line.length-"Full: ".length].chomp.strip)
  elsif /^Twin/.match(line)
    twin = Integer(line["Twin: ".length, line.length-"Twin: ".length].chomp.strip)
  elsif /^Notes/.match(line) && line.length > "Notes: ".length
    notes = line["Notes: ".length, line.length-"Notes: ".length].chomp.strip
  elsif /^Apartment/.match(line)
    apartment = line["Apartment: ".length, line.length-"Apartment: ".length].chomp.strip
  elsif /^Upstairs/.match(line)
    description = description + line["Upstairs: ".length, line.length-"Upstairs: ".length]
    arr = line["Upstairs: ".length, line.length-"Upstairs: ".length].chomp.split(',')
    rooms = parse_line(arr, rooms)
  elsif /^Downstairs/.match(line)
    description = description + line["Downstairs: ".length, line.length-"Downstairs: ".length]
    arr = line["Downstairs: ".length, line.length-"Downstairs: ".length].chomp.split(',')
    rooms = parse_line(arr, rooms)
  elsif /^Description/.match(line)
    description = description + line["Description: ".length, line.length-"Description: ".length]
    arr = line["Description: ".length, line.length-"Description: ".length].chomp.split(',')
    rooms = parse_line(arr,rooms)
  end


end

