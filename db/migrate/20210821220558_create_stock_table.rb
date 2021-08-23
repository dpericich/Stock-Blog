class CreateStockTable < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_stocks do |t|
      t.string :company_name, null: false
      t.string :ticker_symbol, null: false
      t.decimal :ending_price, null: false
      t.date :ending_date, null: false

      t.timestamps
    end
  end
end
