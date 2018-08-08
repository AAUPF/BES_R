require 'test_helper'

class Health12sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health12 = health12s(:one)
  end

  test "should get index" do
    get health12s_url
    assert_response :success
  end

  test "should get new" do
    get new_health12_url
    assert_response :success
  end

  test "should create health12" do
    assert_difference('Health12.count') do
      post health12s_url, params: { health12: { Fund_Disbursed: @health12.Fund_Disbursed, NRHM: @health12.NRHM, Year: @health12.Year } }
    end

    assert_redirected_to health12_url(Health12.last)
  end

  test "should show health12" do
    get health12_url(@health12)
    assert_response :success
  end

  test "should get edit" do
    get edit_health12_url(@health12)
    assert_response :success
  end

  test "should update health12" do
    patch health12_url(@health12), params: { health12: { Fund_Disbursed: @health12.Fund_Disbursed, NRHM: @health12.NRHM, Year: @health12.Year } }
    assert_redirected_to health12_url(@health12)
  end

  test "should destroy health12" do
    assert_difference('Health12.count', -1) do
      delete health12_url(@health12)
    end

    assert_redirected_to health12s_url
  end
end
