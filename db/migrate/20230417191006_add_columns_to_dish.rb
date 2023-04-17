class AddColumnsToDish < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :calories, :integer, default: 0
    add_column :dishes, :ingredients, :string, array: true, default: []
  end
end
