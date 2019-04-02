class ChangeColumnsToAddress < ActiveRecord::Migration[5.2]
  def up
    remove_column :addresses, :add_line1, :string
    remove_column :addresses, :add_line2, :string
    # remove_column :addresses, :country, :string

    add_column :addresses, :address1, :string
    add_column :addresses, :address2, :string
    # add_column :addresses, :country, :integer

  end

  def down
    remove_column :addresses, :address1, :string
    remove_column :addresses, :address2, :string
    # remove_column :addresses, :country_code, :integer

    add_column :addresses, :add_line1, :string
    add_column :addresses, :add_line2, :string
    # add_column :addresses, :country, :string
  end
end
