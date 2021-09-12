class Company < ActiveRecord::Base
  has_many :daily_stocks
end
