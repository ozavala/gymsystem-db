# == Schema Information
#
# Table name: invoice_lines
#
#  id              :bigint(8)        not null, primary key
#  invoice_id      :bigint(8)
#  package_id      :bigint(8)
#  quantity        :decimal(20, 2)
#  unit_price      :decimal(20, 2)
#  extended_amount :decimal(20, 2)
#  description     :text
#  message         :text
#  taxable_flag    :integer
#

class InvoiceLine < ApplicationRecord
  belongs_to :package
end
