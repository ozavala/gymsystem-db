class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.references :gymsite, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :id_document
      t.integer :document_type
      t.string :irs_id



    end
  end
end
