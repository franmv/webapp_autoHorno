class CreateTemperaturas < ActiveRecord::Migration
  def change
    create_table :temperaturas do |t|
      t.integer :valor

      t.timestamps null: false
    end
  end
end
