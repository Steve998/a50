# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  username   :string
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ActiveRecord::Base
  has_one :client
  belongs_to :clients
end
