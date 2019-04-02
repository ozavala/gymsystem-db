class CreateUserAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_accounts do |t|
      t.references :user, foreign_key: true
      t.references :gl_account, foreign_key: true
      t.string :description
      t.date :from_date
      t.date :thru_date

    end
  end
end
