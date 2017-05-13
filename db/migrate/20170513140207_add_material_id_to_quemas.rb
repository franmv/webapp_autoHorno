class AddMaterialIdToQuemas < ActiveRecord::Migration
  def change
    add_column :quemas, :material_id, :integer
    add_index :quemas, :material_id
  end
end
