class Product < ApplicationRecord
  has_many :categorizations
  has_many :categories, through: :categorizations
  # accepts_nested_attributes_for :categories, reject_if: proc {|attributes| attributes['name'].blank?}
  # accepts_nested_attributes_for :categorizations

end
