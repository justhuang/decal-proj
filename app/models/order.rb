class Order < ApplicationRecord
  belongs_to :employee
  has_many :meals
end
