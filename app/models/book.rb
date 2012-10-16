class Book < ActiveRecord::Base
  attr_accessible :authors, :cover, :status, :title
  scope :dont_have, where(:status => 0)
  scope :to_read, where(:status => 1)
  scope :read, where(:status => 2)
  scope :not_interested, where(:status => 3)
  scope :undefined, where(:status => nil)

  define_index do
    indexes title, authors

    has created_at
  end
end
