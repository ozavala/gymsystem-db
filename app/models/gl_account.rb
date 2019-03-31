# == Schema Information
#
# Table name: gl_accounts
#
#  id              :bigint(8)        not null, primary key
#  acc_code        :string
#  acc_parent_code :string
#  name            :string
#  description     :string
#  account_type_id :bigint(8)
#  period_type_id  :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class GlAccount < ApplicationRecord
  belongs_to :account_type
  belongs_to :period_type
  has_many :payments
end
