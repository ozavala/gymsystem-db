class CreateGlAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :gl_accounts do |t|
      t.string :acc_code
      t.string :acc_parent_code
      t.string :name
      t.string :description
      t.references :account_type, foreign_key: true

      t.timestamps
    end
  end
end
