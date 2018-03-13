class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.references :license, foreign_key: true
      t.string :code
      t.decimal :totalvt, precision: 8, scale: 2
      t.decimal :netov, precision: 8, scale: 2
      t.decimal :gastov, precision: 8, scale: 2
      t.decimal :choferv, precision: 8, scale: 2

      t.timestamps
    end
  end
end
