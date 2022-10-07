class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :photo
      t.string :description
      t.decimal :star

      t.timestamps
    end
  end
end
