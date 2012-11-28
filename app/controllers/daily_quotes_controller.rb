class DailyQuotesController < ApplicationController

  around_filter :catch_not_found
  
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
    if @daily_quote.blank?
      redirect_to root_path
    end
      
  end

  def edit
    redirect_to root_path
    @daily_quote = DailyQuote.find(params[:id])
  end

  def update
    redirect_to root_path
    @daily_quote = DailyQuote.find(params[:id])
    if @daily_quote.update_attributes(params[:daily_quote])
      redirect_to @daily_quote, notice: 'Daily quote was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    redirect_to root_path
    @daily_quote = DailyQuote.find(params[:id])
    @daily_quote.destroy
    redirect_to daily_quotes_url
  end
end
