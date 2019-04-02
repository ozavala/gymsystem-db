class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :username
      t.string :avatar
      t.date :birthday
      t.integer :gender
      t.integer :role
      t.date :start_date
      t.date :thru_date
      t.references :enrollment, foreign_key: true
      t.decimal :enrollment_fee, precision: 20, scale: 2
      t.boolean :active
      t.integer :level
      t.integer :source
      t.text :notes

    end
    add_index :profiles, :username
  end
end
