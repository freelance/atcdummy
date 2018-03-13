class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.references :spreadsheet, foreign_key: true
      t.decimal :gastov, precision: 8, scale: 2
      t.text :edescription

      t.timestamps
    end
  end
end
