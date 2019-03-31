class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :gl_account, foreign_key: true
      t.references :user_account, foreign_key: true
      t.date :payment_date
      t.date :due_date
      t.integer :payment_status

      t.timestamps
    end
  end
end
