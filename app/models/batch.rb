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

class Batch < ActiveRecord::Base
  belongs_to :user
  has_many :items
  accepts_nested_attributes_for :items
end
