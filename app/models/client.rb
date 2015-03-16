# == Schema Information
#
# Table name: clients
#
#  id           :integer          not null, primary key
#  first_name   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  orders_count :integer
#

class Client < ActiveRecord::Base
  has_one :address
  has_one :role

  has_many :orders
  has_many :roles
end
