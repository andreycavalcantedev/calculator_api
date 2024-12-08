class Expression < ApplicationRecord
  validates :expression, presence: true
  validates :resul, presence: true, numericality: true
end
