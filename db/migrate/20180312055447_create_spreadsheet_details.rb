class CreateSpreadsheetDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :spreadsheet_details do |t|
      t.integer :spreadsheet_id
      t.decimal :totalv, precision: 8, scale: 2
      t.decimal :netov, precision: 8, scale: 2
      t.decimal :gastov, precision: 8, scale: 2
      t.decimal :choferv, precision: 8, scale: 2

      t.timestamps
    end
  end
end
