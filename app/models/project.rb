class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  default_scope {order(:name)}
  
  def big_image
    self.image.gsub('.png','-big.png')
  end
end
