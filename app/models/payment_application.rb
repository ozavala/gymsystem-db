# == Schema Information
#
# Table name: payment_applications
#
#  id              :bigint(8)        not null, primary key
#  amount_applied  :decimal(20, 2)
#  user_account_id :bigint(8)
#  invoice_line_id :bigint(8)
#  payment_id      :bigint(8)
#

class PaymentApplication < ApplicationRecord
  belongs_to :user_account
  belongs_to :invoice_line
  belongs_to :payment
end
