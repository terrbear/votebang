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

require 'spec_helper'

describe Ballot do
  pending "add some examples to (or delete) #{__FILE__}"
end
