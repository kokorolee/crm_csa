class Domain < ApplicationRecord
  validates :name, presence: true

  scope :active, ->{where(active: true)}
end
