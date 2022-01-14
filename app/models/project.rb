class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, :description, :image, :information, :videofile, :fieldOfEducation, :fieldOfWelfare, :fieldOfHealth, :video, presence: true

  default_scope {order(:name)}
  
end
