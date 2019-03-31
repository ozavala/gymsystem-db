# == Schema Information
#
# Table name: user_accounts
#
#  id            :bigint(8)        not null, primary key
#  user_id       :bigint(8)
#  gl_account_id :bigint(8)
#  from_date     :date
#  thru_date     :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class UserAccount < ApplicationRecord
  belongs_to :user
  belongs_to :gl_account
end
