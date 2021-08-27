module WebscraperHelper
  def self.google_stock_scraper(ticker_symbol)
    address = "https://www.google.com/search?q=#{ticker_symbol}+stock"
    web_page = HTTParty.get(address)
    parsed_web_page = Nokogiri::HTML5(web_page)

    company_name = format_google_company_name(parsed_web_page)
    ticker_symbol = ticker_symbol
    ending_price = format_google_ending_price(parsed_web_page)
    ending_date = Date.today

    DailyStock.create!(company_name: company_name, ticker_symbol: ticker_symbol, ending_price: ending_price, ending_date: ending_date)
  end



  def self.google_company_scraper(ticker_symbol)
    address = "https://www.google.com/search?q=#{ticker_symbol}+stock"
    web_page = HTTParty.get(address)
    parsed_web_page = Nokogiri::HTML5(web_page)

    company_name = format_company_name(parsed_web_page)
    ticker_symbol = ticker_symbol
    company_type = parsed_web_page.css('div.BNeawe.tAd8D.AP7Wnd').text
    # description = parsed_web_page.css('div.BNeawe.s3v9rd.AP7Wnd').text
    # pe_ratio = parsed_web_page.css().text
    market_cap = parsed_web_page.css('span.r0bn4c.rQMQod').text
    # dividend_yield = parsed_web_page.css().text
    binding.pry
  end

  def self.format_google_company_name(parsed_web_page)
    company_name = parsed_web_page.css('div.BNeawe.deIvCb.AP7Wnd').text
    company_name = company_name.downcase.split('top')[0].titleize
  end

  def self.format_google_ending_price(parsed_web_page)
    ending_price = /^\d*.\d*\.\d*/.match(parsed_web_page.css('div.BNeawe.iBp4i.AP7Wnd').text).to_s
    ending_price = ending_price.delete(",")
    # Need to do something here for
  end

  private_class_method :format_google_company_name, :format_google_ending_price
end
