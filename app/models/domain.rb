class Domain < ApplicationRecord
  validates :name, presence: true, domain: true, uniqueness: true

  scope :active, ->{where(active: true)}
end
