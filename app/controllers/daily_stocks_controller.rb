class DailyStocksController < ActionController::Base
  def index
    # When I go to this endpoint it will run the process of retrieveing the webpage / getting the record
    # Break scraper logic into separate scraper helper class
    # Scraper stock will have different target methods i.e. Google, YahooFinance...
    # stock = 'BLL'
    stock = "BLL"
    @message = WebscraperHelper.google_stock_scraper(stock)
  end
end
