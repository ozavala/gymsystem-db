# == Schema Information
#
# Table name: account_types
#
#  id         :bigint(8)        not null, primary key
#  acc_type   :string
#  acc_class  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AccountType < ApplicationRecord
  has_many :gl_accounts
end
