class AddColumnsToDish < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :calories, :integer, default: 0
  end
end
