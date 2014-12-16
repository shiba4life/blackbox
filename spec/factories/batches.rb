# == Schema Information
#
# Table name: batches
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  expiration_date :date
#  created_at      :datetime
#  updated_at      :datetime
#  item_names      :text
#

FactoryGirl.define do
  factory :batch do
    user nil
expiration_date "2014-12-06"
  end

end
