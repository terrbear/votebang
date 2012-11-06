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

  def vote_percent
    sprintf "%.0f%", self.vote_percent_num
  end

  def winner?
    self.vote_percent_num >= 50.0
  end

  protected
  def vote_percent_num
    options = Option.where(choice: self.choice).all
    vote_total = options.reduce(0){|sum, o| o.votes.count + sum}
    (self.votes.count.to_f / vote_total.to_f) * 100

  end
end
