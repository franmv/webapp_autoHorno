class AddTempFusionToQuemas < ActiveRecord::Migration
  def change
    add_column :quemas, :temp_fusion, :integer
  end
end
