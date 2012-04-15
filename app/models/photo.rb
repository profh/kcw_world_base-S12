class Photo < ActiveRecord::Base
  # Carrierwave
  mount_uploader :image, ImageUploader
  
  # Relationships
  belongs_to :category
  
  # Validations
  validates_presence_of :caption
  
  # Scopes
  scope :active, where('active = ?', true)
  scope :alphabetical, order('caption')
end
