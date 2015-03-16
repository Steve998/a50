# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  item       :string
#  quantity   :integer
#  number     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  belongs_to :client, counter_cache: true
end
