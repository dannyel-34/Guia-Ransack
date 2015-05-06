class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :cantidad
      t.string :descripcion
      t.float :precio

      t.timestamps
    end
  end
end
