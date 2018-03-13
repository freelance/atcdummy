# == Schema Information
#
# Table name: spreadsheet_details
#
#  id             :integer          not null, primary key
#  spreadsheet_id :integer
#  totalv         :decimal(8, 2)
#  netov          :decimal(8, 2)
#  gastov         :decimal(8, 2)
#  choferv        :decimal(8, 2)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class SpreadsheetDetail < ApplicationRecord
belongs_to :Spreadsheet
belongs_to :Tickets

accepts_nested_attributes_for :item




end
