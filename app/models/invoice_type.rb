# == Schema Information
#
# Table name: invoice_types
#
#  id                :bigint(8)        not null, primary key
#  invoice_type_code :string
#  tax_percent       :decimal(, )
#

class InvoiceType < ApplicationRecord
  has_many :invoices
end
