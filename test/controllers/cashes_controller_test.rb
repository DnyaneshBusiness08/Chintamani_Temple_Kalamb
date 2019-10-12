require 'test_helper'

class CashesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cash = cashes(:one)
  end

  test "should get index" do
    get cashes_url
    assert_response :success
  end

  test "should get new" do
    get new_cash_url
    assert_response :success
  end

  test "should create cash" do
    assert_difference('Cash.count') do
      post cashes_url, params: { cash: { address: @cash.address, amount: @cash.amount, contact: @cash.contact, date: @cash.date, name: @cash.name, receiver: @cash.receiver } }
    end

    assert_redirected_to cash_url(Cash.last)
  end

  test "should show cash" do
    get cash_url(@cash)
    assert_response :success
  end

  test "should get edit" do
    get edit_cash_url(@cash)
    assert_response :success
  end

  test "should update cash" do
    patch cash_url(@cash), params: { cash: { address: @cash.address, amount: @cash.amount, contact: @cash.contact, date: @cash.date, name: @cash.name, receiver: @cash.receiver } }
    assert_redirected_to cash_url(@cash)
  end

  test "should destroy cash" do
    assert_difference('Cash.count', -1) do
      delete cash_url(@cash)
    end

    assert_redirected_to cashes_url
  end
end
