# == Schema Information
#
# Table name: accounting_periods
#
#  id             :bigint(8)        not null, primary key
#  acc_period_num :integer
#  from_day       :date
#  thru_day       :date
#  period_type_id :bigint(8)
#  gymsite_id     :bigint(8)
#

class AccountingPeriod < ApplicationRecord
  belongs_to :period_type
end
