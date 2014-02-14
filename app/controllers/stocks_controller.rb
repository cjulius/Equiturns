class StocksController < ApplicationController

	def show
	    @stock = Stock.find(params[:id])
	    all_info = StockQuote::Stock.quote(@stock.ticker)
	    @name = all_info.name.split[0]
	    @price = all_info.ask_realtime
	    @change = all_info.change_realtime
	end

	def index
	    @stocks = StockQuote::Stock.quote("VZ, BAC, CSCO, MSF")
	end




end