# == Schema Information
#
# Table name: licenses
#
#  id         :integer          not null, primary key
#  number     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class License < ApplicationRecord
  has_many :tickets
  has_many :spreadsheets
end
