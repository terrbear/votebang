# == Schema Information
#
# Table name: ballots
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ballot < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :admin_user, :foreign_key => :user_id

  attr_accessible :name

  has_many :votes

end
