# == Schema Information
#
# Table name: period_types
#
#  id               :bigint(8)        not null, primary key
#  period_type_code :string
#  description      :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class PeriodType < ApplicationRecord
  has_many :gl_accounts
end
