class AddAddressToItems < ActiveRecord::Migration
  def change
    add_column :items, :address, :string
    add_column :items, :lat, :float
    add_column :items, :lng, :float
  end
end
