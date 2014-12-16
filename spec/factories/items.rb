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

FactoryGirl.define do
  factory :item do
    batch nil
name "MyString"
brand "MyString"
price 1
color "MyString"
age 1
blemishes "MyString"
original_price 1
url "MyString"
description "MyText"
  end

end
