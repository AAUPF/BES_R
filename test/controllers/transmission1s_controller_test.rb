require 'test_helper'

class Transmission1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transmission1 = transmission1s(:one)
  end

  test "should get index" do
    get transmission1s_url
    assert_response :success
  end

  test "should get new" do
    get new_transmission1_url
    assert_response :success
  end

  test "should create transmission1" do
    assert_difference('Transmission1.count') do
      post transmission1s_url, params: { transmission1: { 2017-18: @transmission1.2017-18, 2018-19: @transmission1.2018-19, 2019-20: @transmission1.2019-20, Demand_Capacity: @transmission1.Demand_Capacity } }
    end

    assert_redirected_to transmission1_url(Transmission1.last)
  end

  test "should show transmission1" do
    get transmission1_url(@transmission1)
    assert_response :success
  end

  test "should get edit" do
    get edit_transmission1_url(@transmission1)
    assert_response :success
  end

  test "should update transmission1" do
    patch transmission1_url(@transmission1), params: { transmission1: { 2017-18: @transmission1.2017-18, 2018-19: @transmission1.2018-19, 2019-20: @transmission1.2019-20, Demand_Capacity: @transmission1.Demand_Capacity } }
    assert_redirected_to transmission1_url(@transmission1)
  end

  test "should destroy transmission1" do
    assert_difference('Transmission1.count', -1) do
      delete transmission1_url(@transmission1)
    end

    assert_redirected_to transmission1s_url
  end
end
