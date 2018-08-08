require 'test_helper'

class Health8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health8 = health8s(:one)
  end

  test "should get index" do
    get health8s_url
    assert_response :success
  end

  test "should get new" do
    get new_health8_url
    assert_response :success
  end

  test "should create health8" do
    assert_difference('Health8.count') do
      post health8s_url, params: { health8: { Institutional_Delivery: @health8.Institutional_Delivery, Year: @health8.Year } }
    end

    assert_redirected_to health8_url(Health8.last)
  end

  test "should show health8" do
    get health8_url(@health8)
    assert_response :success
  end

  test "should get edit" do
    get edit_health8_url(@health8)
    assert_response :success
  end

  test "should update health8" do
    patch health8_url(@health8), params: { health8: { Institutional_Delivery: @health8.Institutional_Delivery, Year: @health8.Year } }
    assert_redirected_to health8_url(@health8)
  end

  test "should destroy health8" do
    assert_difference('Health8.count', -1) do
      delete health8_url(@health8)
    end

    assert_redirected_to health8s_url
  end
end
