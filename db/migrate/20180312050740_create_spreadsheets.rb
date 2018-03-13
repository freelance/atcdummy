class CreateSpreadsheets < ActiveRecord::Migration[5.2]
  def change
    create_table :spreadsheets do |t|
      t.integer :number
      t.date :date
      t.integer :state
      t.decimal :tneto, precision: 8, scale: 2
      t.decimal :tgastog, precision: 8, scale: 2
      t.decimal :tapagar, precision: 8, scale: 2

      t.timestamps
    end
  end
end
