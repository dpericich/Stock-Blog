class AddCompanyTable < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name, null: false
      t.text :description
      t.decimal :pe_ratio
      t.string :market_cap
      t.decimal :dividend_yield

      t.timestamps
    end
  end
end
