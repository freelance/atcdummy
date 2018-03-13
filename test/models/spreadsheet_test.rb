# == Schema Information
#
# Table name: spreadsheets
#
#  id         :integer          not null, primary key
#  number     :integer
#  date       :date
#  state      :integer
#  tneto      :decimal(8, 2)
#  tgastog    :decimal(8, 2)
#  tapagar    :decimal(8, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SpreadsheetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
