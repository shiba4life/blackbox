# == Schema Information
#
# Table name: items
#
#  id                    :integer          not null, primary key
#  batch_id              :integer
#  name                  :string(255)
#  brand                 :string(255)
#  price                 :integer
#  color                 :string(255)
#  age                   :integer
#  blemishes             :string(255)
#  original_price        :integer
#  url                   :string(255)
#  description           :text
#  created_at            :datetime
#  updated_at            :datetime
#  filepicker_image_urls :string(255)
#  address               :string(255)
#  lat                   :float
#  lng                   :float
#

class Item < ActiveRecord::Base
  belongs_to :batch

  def next
  	is_next = false
  	self.batch.items.each do |item|
  		if is_next == true
  			return item
  		end
  		if item.id == self.id
  			is_next = true
  		end
  	end
  	return nil
  end
end
