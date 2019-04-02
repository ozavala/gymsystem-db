class CreateAccountingPeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :accounting_periods do |t|
      t.integer :acc_period_num
      t.date :from_day
      t.date :thru_day
      t.references :period_type, foreign_key: true
      t.references :gymsite, foreign_key: true

    end
  end
end
