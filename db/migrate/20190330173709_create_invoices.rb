class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.references :payment, foreign_key: true
      t.string :invoice_number
      t.string :invoice_refernce
      t.date :issue_date
      t.decimal :amount
      t.boolean :tax_flag

      t.timestamps
    end
  end
end
