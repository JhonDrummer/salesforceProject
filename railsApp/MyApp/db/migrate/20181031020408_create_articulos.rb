class CreateArticulos < ActiveRecord::Migration[5.1]
  def change
    create_table :articulos do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
