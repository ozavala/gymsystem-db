class CreateInvoiceTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_types do |t|
      t.string :invoice_type_code
      t.decimal :tax_percent

    end
  end
end
