# == Schema Information
#
# Table name: payments
#
#  id                     :bigint(8)        not null, primary key
#  payment_method_type_id :integer
#  pay_type_id            :integer
#  effective_date         :date
#  transaction_date       :date
#  payment_ref_no         :string
#  description            :string
#  pay_comment            :text
#  amount                 :decimal(20, )
#  user_id                :integer
#  gymsite_id             :integer
#

class Payment < ApplicationRecord
  belongs_to :gl_account
  belongs_to :user_account
end
