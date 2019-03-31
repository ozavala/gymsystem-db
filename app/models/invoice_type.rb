# == Schema Information
#
# Table name: invoice_types
#
#  id                :bigint(8)        not null, primary key
#  invoice_type_code :string
#  tax_percent       :decimal(, )
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class InvoiceType < ApplicationRecord
  has_many :invoices
end
