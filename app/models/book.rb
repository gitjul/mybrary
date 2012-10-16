class Book < ActiveRecord::Base
  attr_accessible :authors, :cover, :status, :title

  define_index do
    indexes title
    indexes authors

    has created_at
  end
end
