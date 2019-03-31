class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.references :package, foreign_key: true
      t.string :invoice_number
      t.string :invoice_reference
      t.date :invoice_date
      t.decimal :amount, precision: 20, scale: 2
      


      t.timestamps
    end
  end
end
