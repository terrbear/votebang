# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ballot_id  :integer
#

class Vote < ActiveRecord::Base
  attr_accessible :user_id, :option_id, :ballot_id

  belongs_to :admin_user, :foreign_key => :user_id
  belongs_to :ballot
  belongs_to :option
end
