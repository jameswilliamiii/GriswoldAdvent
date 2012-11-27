class DailyQuotesController < ApplicationController

  def index
    @daily_quotes = DailyQuote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_quotes }
    end
  end

  def show
    todays_date = Date.today.day
    @daily_quote = DailyQuote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_quote }
    end
  end

  def new
    @daily_quote = DailyQuote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_quote }
    end
  end

  def edit
    @daily_quote = DailyQuote.find(params[:id])
  end

  def create
    @daily_quote = DailyQuote.new(params[:daily_quote])

    respond_to do |format|
      if @daily_quote.save
        format.html { redirect_to @daily_quote, notice: 'Daily quote was successfully created.' }
        format.json { render json: @daily_quote, status: :created, location: @daily_quote }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @daily_quote = DailyQuote.find(params[:id])

    respond_to do |format|
      if @daily_quote.update_attributes(params[:daily_quote])
        format.html { redirect_to @daily_quote, notice: 'Daily quote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @daily_quote = DailyQuote.find(params[:id])
    @daily_quote.destroy

    respond_to do |format|
      format.html { redirect_to daily_quotes_url }
      format.json { head :no_content }
    end
  end
end
