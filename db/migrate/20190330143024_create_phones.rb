class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.references :user, foreign_key: true
      t.string :number
      t.integer :purpose

    end
  end
end
