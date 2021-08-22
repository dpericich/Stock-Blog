class ArticlesController < ActionController::Base
  def index
    @articles = Article.all
  end

  # How does this app work?
  # Basic blog features to allow me to write about stocks that I am interested in

  # Also want to have section to fill out with stock information
    # This needs to be optional for posts that are not centered around specific stocks
    # An article can have a stock summary (stock summary belongs to an article)

  # What pages do I have to start?
  #   1) Home blog page
  #   2) Article page
  #   2a) Article creation page (post request on submit)
  #   3) A portfolio tracker page (for my imaginary stocks)


  # Clean and Modern
  # #17252A
  # #2B7A78
  # #3AAFA9
  # #DEF2F1
  # #FEFFFFF

  # Gorgeous Contrast
  # #61892F
  # #86C232
  # #222629
  # #474B4F
  # #6B6E70


  # Need Scraper controller to use post with to get our data and post it to the DailyStock model
  # End goal is to have the scraper run once a day once they have been added to my list of stocks
  # What are good intermediate steps for that?
  #######
  # 1) Have an input with a button. When a stock ticker is entered in and the button is clicked, it will
  # make a call to Google and get the values of the webpage

  # Google search webpage is the following: "https://www.google.com/search?q=#{ticker_symbol}+stock"
  # store the values in a new instance of DailyStock
  # 2) Setup action to run off ActiveJob at preset time. Will provide a list of stocks to grab and this will
  # grab the pages and create new records of DailyStock
end
