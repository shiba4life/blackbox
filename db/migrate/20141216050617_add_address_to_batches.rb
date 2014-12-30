class AddAddressToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :address, :string
    add_column :batches, :lat, :float
    add_column :batches, :lng, :float
  end
end
