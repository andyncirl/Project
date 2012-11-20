class CreateJerseys < ActiveRecord::Migration
  def change
    create_table :jerseys do |t|
      t.string :name
      t.text :description
      t.string :league
      t.text :colour
      t.text :brand
      t.float :price
      t.string :image_url

      t.timestamps
    end
  end
end
