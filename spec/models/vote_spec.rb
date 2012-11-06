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

require 'spec_helper'

describe Vote do
  pending "add some examples to (or delete) #{__FILE__}"
end
