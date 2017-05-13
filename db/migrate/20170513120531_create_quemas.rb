class CreateQuemas < ActiveRecord::Migration
  def change
    create_table :quemas do |t|
      t.boolean :estado

      t.timestamps null: false
    end
  end
end
