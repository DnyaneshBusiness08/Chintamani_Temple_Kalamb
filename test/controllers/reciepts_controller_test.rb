require 'test_helper'

class RecieptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reciept = reciepts(:one)
  end

  test "should get index" do
    get reciepts_url
    assert_response :success
  end

  test "should get new" do
    get new_reciept_url
    assert_response :success
  end

  test "should create reciept" do
    assert_difference('Reciept.count') do
      post reciepts_url, params: { reciept: {  } }
    end

    assert_redirected_to reciept_url(Reciept.last)
  end

  test "should show reciept" do
    get reciept_url(@reciept)
    assert_response :success
  end

  test "should get edit" do
    get edit_reciept_url(@reciept)
    assert_response :success
  end

  test "should update reciept" do
    patch reciept_url(@reciept), params: { reciept: {  } }
    assert_redirected_to reciept_url(@reciept)
  end

  test "should destroy reciept" do
    assert_difference('Reciept.count', -1) do
      delete reciept_url(@reciept)
    end

    assert_redirected_to reciepts_url
  end
end
