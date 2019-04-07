class Categorization < ApplicationRecord
  belongs_to :product, inverse_of: :categorizations
  belongs_to :category, inverse_of: :categorizations
end
