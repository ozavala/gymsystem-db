class PaymentApplication < ApplicationRecord
  belongs_to :user_account
  belongs_to :invoice_line
  belongs_to :payment
end
