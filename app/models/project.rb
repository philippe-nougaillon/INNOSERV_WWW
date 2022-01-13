class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  default_scope {order(:name)}
  
end
