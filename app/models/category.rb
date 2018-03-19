class Category < ApplicationRecord
  validates :name, presence: true

  has_many :domain
  extend Enumerize
  enumerize :name, in: [:Technology, :Relax, :Study, :Other], default: :Other
end
