class Domain < ApplicationRecord
  validates :name, presence: true, domain: true
  
  scope :active, ->{where(active: true)}
end
