require 'test_helper'

class DailyQuotesControllerTest < ActionController::TestCase
  setup do
    @daily_quote = daily_quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_quote" do
    assert_difference('DailyQuote.count') do
      post :create, daily_quote: { quote: @daily_quote.quote, show_date: @daily_quote.show_date }
    end

    assert_redirected_to daily_quote_path(assigns(:daily_quote))
  end

  test "should show daily_quote" do
    get :show, id: @daily_quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_quote
    assert_response :success
  end

  test "should update daily_quote" do
    put :update, id: @daily_quote, daily_quote: { quote: @daily_quote.quote, show_date: @daily_quote.show_date }
    assert_redirected_to daily_quote_path(assigns(:daily_quote))
  end

  test "should destroy daily_quote" do
    assert_difference('DailyQuote.count', -1) do
      delete :destroy, id: @daily_quote
    end

    assert_redirected_to daily_quotes_path
  end
end
