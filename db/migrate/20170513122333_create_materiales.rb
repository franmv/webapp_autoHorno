class CreateMateriales < ActiveRecord::Migration
  def change
    create_table :materiales do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
