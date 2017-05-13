class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :nombre
      t.boolean :estatus

      t.timestamps null: false
    end
  end
end
