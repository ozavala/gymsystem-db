class AddColumnsToGymsite < ActiveRecord::Migration[5.2]
  def change
    add_column :gymsites, :phone1, :string
    add_column :gymsites, :phone2, :string
    add_column :gymsites, :address1, :string
    add_column :gymsites, :address2, :string
    add_column :gymsites, :city, :string
    add_column :gymsites, :state, :string
    add_column :gymsites, :zip, :string
    add_column :gymsites, :country, :string
    add_column :gymsites, :region, :integer
    add_column :gymsites, :sector, :integer
    add_column :gymsites, :instructions, :text

  end
end
