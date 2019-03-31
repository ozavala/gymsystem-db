class CreatePeriodTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :period_types do |t|
      t.string :period_type_code
      t.string :description

      t.timestamps
    end
  end
end
