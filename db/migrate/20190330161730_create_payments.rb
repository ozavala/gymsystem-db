class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.integer :payment_method_type_id #check ( 'REC', 'EXP')
      t.integer :pay_type_id # receipt or didsbusement
      t.date :effective_date
      t.date :transaction_date
      t.string :payment_ref_no
      t.string :description
      t.text :pay_comment
      t.decimal :amount, precision: 20 , escale:2
      t.integer :user_id, foreign_key: true
      t.integer :gymsite_id, foreign_key: true


      t.timestamps
    end
  end
end
