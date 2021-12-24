class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  def big_image
    self.image.gsub('.png','-big.png')
  end
end
