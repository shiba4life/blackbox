class AddFilepickerImageUrlsToItem < ActiveRecord::Migration
  def change
    add_column :items, :filepicker_image_urls, :string
  end
end
