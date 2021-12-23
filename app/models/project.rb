class Project < ApplicationRecord
  def big_image
    self.image.gsub('.png','-big.png')
  end
end
