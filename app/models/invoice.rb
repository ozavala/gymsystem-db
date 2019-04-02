# == Schema Information
#
# Table name: invoices
#
#  id                :bigint(8)        not null, primary key
#  package_id        :bigint(8)
#  invoice_number    :string
#  invoice_reference :string
#  invoice_date      :date
#  amount            :decimal(20, 2)
#

class Invoice < ApplicationRecord
  belongs_to :payment
  has_many :invoice_line
  belongs_to :user
  
end
