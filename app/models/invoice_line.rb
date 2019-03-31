# == Schema Information
#
# Table name: invoice_lines
#
#  id          :bigint(8)        not null, primary key
#  package_id  :bigint(8)
#  qty         :integer
#  price       :decimal(, )
#  description :text
#  message     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class InvoiceLine < ApplicationRecord
  belongs_to :package
end
