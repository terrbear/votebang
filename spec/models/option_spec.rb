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

require 'spec_helper'

describe Option do
  pending "add some examples to (or delete) #{__FILE__}"
end
