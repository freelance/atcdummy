# == Schema Information
#
# Table name: expenses
#
#  id             :integer          not null, primary key
#  spreadsheet_id :integer
#  gastov         :decimal(8, 2)
#  edescription   :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Expense < ApplicationRecord
  belongs_to :spreadsheet
end
