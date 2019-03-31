class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :user, foreign_key: true
      t.string :add_line1
      t.string :add_line2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.integer :region
      t.integer :sector
      t.text :instruction
      t.integer :use_of

      t.timestamps
    end
  end
end
