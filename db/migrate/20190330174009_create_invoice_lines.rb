class CreateInvoiceLines < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_lines do |t|
      t.references :package, foreign_key: true
      t.integer :qty
      t.decimal :price
      t.text :description
      t.text :message

      t.timestamps
    end
  end
end
