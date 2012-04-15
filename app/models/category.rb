class Category < ActiveRecord::Base
  has_many :articles
  has_many :photos
  
  scope :active, where('active = ?', true)
  scope :alphabetical, order('name')
end
