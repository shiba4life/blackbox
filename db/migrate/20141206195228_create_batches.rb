class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.belongs_to :user, index: true
      t.date :expiration_date

      t.timestamps
    end
  end
end
