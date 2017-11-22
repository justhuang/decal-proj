class Meal < ApplicationRecord
  has_many :customers, optional: true
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
end
