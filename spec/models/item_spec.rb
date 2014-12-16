# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  batch_id       :integer
#  name           :string(255)
#  brand          :string(255)
#  price          :integer
#  color          :string(255)
#  age            :integer
#  blemishes      :string(255)
#  original_price :integer
#  url            :string(255)
#  description    :text
#  created_at     :datetime
#  updated_at     :datetime
#

require 'rails_helper'

RSpec.describe Item, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
