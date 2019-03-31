# == Schema Information
#
# Table name: packages
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  price      :decimal(, )
#  from_date  :date
#  thru_date  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Package < ApplicationRecord
  has_many :enrollments
end
