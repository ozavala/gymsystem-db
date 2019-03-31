class CreateGymsites < ActiveRecord::Migration[5.2]
  def change
    create_table :gymsites do |t|
      t.string :surname
      t.string :legal_id
      t.string :logo
      t.text :description
      t.string :email
      t.date :start_date
      t.date :thru_date
      
    end
  end
end
