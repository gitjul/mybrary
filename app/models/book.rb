class Book < ActiveRecord::Base
  attr_accessible :authors, :cover, :state, :title
end
