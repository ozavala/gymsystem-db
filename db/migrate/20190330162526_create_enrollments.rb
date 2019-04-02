class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.references :package, foreign_key: true
      t.references :payment, foreign_key: true
      t.date :enrollment_date

    end
  end
end
