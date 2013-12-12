class DailyQuotesController < ApplicationController

  before_filter :check_date, :except => :coming_soon
  around_filter :catch_not_found

  # Add google + button
  # fix facebook button

  def index
    todays_date = Date.today.day
    if todays_date > 25
      @quotes = DailyQuote.where( :show_date => 1..25).order('show_date ASC')
      @daily_quote = @quotes.where(:show_date => 25).first
    else
      @quotes = DailyQuote.where( :show_date => 1..todays_date).order('show_date ASC')
      @daily_quote = @quotes.where(:show_date => todays_date).first
    end
  end

  def show
    todays_date = Date.today.day
    if todays_date > 25
      @quotes = DailyQuote.where( :show_date => 1..25)
    else
      @quotes = DailyQuote.where( :show_date => 1..todays_date)
    end
    @daily_quote = @quotes.where(:id => params[:id]).first
    unless @daily_quote.present?
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

  def coming_soon

  end

  private

  def check_date
    month = Date.today.month
    day = Date.today.day
    unless month == 12 && (1..31).include?(day)
      redirect_to coming_soon_path
    end
  end

end
