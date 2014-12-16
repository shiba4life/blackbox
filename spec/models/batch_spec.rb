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

require 'rails_helper'

RSpec.describe Batch, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
