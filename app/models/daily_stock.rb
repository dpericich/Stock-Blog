class DailyStock < ActiveRecord::Base
  # belongs_to relationship to Company record?
  validates_presence_of :company_name, :ticker_symbol, :ending_price, :ending_date
end
