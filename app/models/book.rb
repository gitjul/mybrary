class Book < ActiveRecord::Base
  attr_accessible :authors, :cover, :status, :title
end
