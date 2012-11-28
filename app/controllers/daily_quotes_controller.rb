class DailyQuotesController < ApplicationController

  def index
    # todays_date = Date.today.day
    #This is just for development purposes
    todays_date = Random.new.rand(1..25).to_i
    @quotes = DailyQuote.where( :show_date => 1..25)
    @daily_quote = @quotes.where(:show_date => todays_date).first
  end
  
  def show
    # todays_date = Date.today.day
    #This is just for development purposes
    todays_date = Random.new.rand(1..25).to_i
    @quotes = DailyQuote.where( :show_date => 1..25)
    @daily_quote = @quotes.where(:id => params[:id]).first
  end

  def new
    @daily_quote = DailyQuote.new
  end

  def edit
    @daily_quote = DailyQuote.find(params[:id])
  end

  def create
    @daily_quote = DailyQuote.new(params[:daily_quote])
    if @daily_quote.save
      redirect_to @daily_quote, notice: 'Daily quote was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @daily_quote = DailyQuote.find(params[:id])
    if @daily_quote.update_attributes(params[:daily_quote])
      redirect_to @daily_quote, notice: 'Daily quote was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @daily_quote = DailyQuote.find(params[:id])
    @daily_quote.destroy
    redirect_to daily_quotes_url
  end
end
