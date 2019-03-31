class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :name
      t.decimal :price
      t.date :from_date
      t.date :thru_date

      t.timestamps
    end
  end
end
