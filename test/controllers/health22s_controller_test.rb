require 'test_helper'

class Health22sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health22 = health22s(:one)
  end

  test "should get index" do
    get health22s_url
    assert_response :success
  end

  test "should get new" do
    get new_health22_url
    assert_response :success
  end

  test "should create health22" do
    assert_difference('Health22.count') do
      post health22s_url, params: { health22: { Districts: @health22.Districts, NRHM_Total: @health22.NRHM_Total, Year: @health22.Year } }
    end

    assert_redirected_to health22_url(Health22.last)
  end

  test "should show health22" do
    get health22_url(@health22)
    assert_response :success
  end

  test "should get edit" do
    get edit_health22_url(@health22)
    assert_response :success
  end

  test "should update health22" do
    patch health22_url(@health22), params: { health22: { Districts: @health22.Districts, NRHM_Total: @health22.NRHM_Total, Year: @health22.Year } }
    assert_redirected_to health22_url(@health22)
  end

  test "should destroy health22" do
    assert_difference('Health22.count', -1) do
      delete health22_url(@health22)
    end

    assert_redirected_to health22s_url
  end
end
