class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :image
      t.string :name
      t.text :description
      t.decimal :price, precision: 5, scale: 2
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
