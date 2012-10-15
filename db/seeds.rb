# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create(:title => "A Title to Remember", :authors => "Kevin Pritchard", :cover => "cover.png", :state => "None")
Book.create(:title => "Another One", :authors => "Ally Hermann-Mayer, Gill Bates", :cover => "cover.png", :state => "Not interested")
Book.create(:title => "Hell on Wheels", :authors => "Sugar Cane", :cover => "cover.png", :state => "Read")
Book.create(:title => "Life of Brian Adams", :authors => "Roger Collins", :cover => "cover.png", :state => "Wanna read")