class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :batch, index: true
      t.string :name
      t.string :brand
      t.integer :price
      t.string :color
      t.integer :age
      t.string :blemishes
      t.integer :original_price
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
