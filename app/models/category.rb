class Category < ApplicationRecord
  has_many :categorizations
  has_many :products, through: :categorizations, inverse_of: :category
end
