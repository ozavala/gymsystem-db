# == Schema Information
#
# Table name: period_types
#
#  id               :bigint(8)        not null, primary key
#  period_type_code :string
#  description      :string
#

class PeriodType < ApplicationRecord
  has_many :gl_accounts
end
