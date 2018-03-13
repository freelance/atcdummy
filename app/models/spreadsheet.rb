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

class Spreadsheet < ApplicationRecord
has_many :spreadsheets_details, inverse_of: :Spreadsheet, dependent: :destroy
has_many :tickets, through: :spreadsheets_details
belongs_to :user
validates :number, presence: true
validates :date, presence: true

	accepts_nested_attributes_for :spreadsheet_detail, reject_if: :spreadsheet_detail_rejectable?, allow_destroy: accepts_nested_attributes_for

enum state: [:draft, :confirmed]



end
