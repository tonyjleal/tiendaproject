class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :nombre
      t.float :precio
      t.text :descripcion
      t.string :imagen

      t.timestamps
    end
  end
end
