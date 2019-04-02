class CreatePaymentApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_applications do |t|
      t.decimal :amount_applied, precision: 20, scale:2
      t.references :user_account, foreign_key: true
      t.references :invoice_line, foreign_key: true
      t.references :payment, foreign_key: true

    end
  end
end
