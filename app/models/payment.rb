# == Schema Information
#
# Table name: payments
#
#  id              :bigint(8)        not null, primary key
#  gl_account_id   :bigint(8)
#  user_account_id :bigint(8)
#  payment_date    :date
#  due_date        :date
#  payment_status  :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Payment < ApplicationRecord
  belongs_to :gl_account
  belongs_to :user_account
end
