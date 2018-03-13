# == Schema Information
#
# Table name: tickets
#
#  id         :integer          not null, primary key
#  license_id :integer
#  code       :string
#  totalvt    :decimal(8, 2)
#  netov      :decimal(8, 2)
#  gastov     :decimal(8, 2)
#  choferv    :decimal(8, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
