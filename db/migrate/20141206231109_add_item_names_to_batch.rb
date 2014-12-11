class AddItemNamesToBatch < ActiveRecord::Migration
  def change
    add_column :batches, :item_names, :text
  end
end
