# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create(:title => "A Title to Remember", :authors => "Kevin Pritchard", :cover => "cover.png", :status => "None")
Book.create(:title => "Another One", :authors => "Ally Hermann-Mayer, Gill Bates", :cover => "cover.png", :status => "Not interested")
Book.create(:title => "Hell on Wheels", :authors => "Sugar Cane", :cover => "cover.png", :status => "Read")
Book.create(:title => "Life of Brian Adams", :authors => "Roger Collins", :cover => "cover.png", :status => "Wanna read")