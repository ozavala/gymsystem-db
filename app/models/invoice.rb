# == Schema Information
#
# Table name: invoices
#
#  id               :bigint(8)        not null, primary key
#  payment_id       :bigint(8)
#  invoice_number   :string
#  invoice_refernce :string
#  issue_date       :date
#  amount           :decimal(, )
#  tax_flag         :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Invoice < ApplicationRecord
  belongs_to :payment
  has_many :invoice_line
  belongs_to :user
  
end
