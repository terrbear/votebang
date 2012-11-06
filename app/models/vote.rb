# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  opion_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ballot_id  :integer
#

class Vote < ActiveRecord::Base
  attr_accessible :option_id, :user_id, :ballot_id

  belongs_to :admin_user, :foreign_key => :user_id
  belongs_to :option
  belongs_to :ballot
end
