class AddTempFusionToMateriales < ActiveRecord::Migration
  def change
    add_column :materiales, :temp_fusion, :integer
  end
end
