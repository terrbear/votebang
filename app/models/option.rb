# == Schema Information
#
# Table name: options
#
#  id         :integer          not null, primary key
#  choice     :string(255)
#  name       :string(255)
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  img_url    :string(255)
#

class Option < ActiveRecord::Base
  attr_accessible :choice, :name, :position, :img_url
  has_many :votes
end
