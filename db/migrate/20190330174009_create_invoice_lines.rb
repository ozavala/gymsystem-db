class CreateInvoiceLines < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_lines do |t|
      t.references :invoice, foreign_key: true
      t.references :package, foreign_key: true
      t.decimal :quantity, precision: 20, scale: 2
      t.decimal :unit_price, precision: 20, scale: 2
      t.decimal :extended_amount, precision: 20, scale: 2
      t.text :description
      t.text :message
      t.integer :taxable_flag

    end
  end
end
