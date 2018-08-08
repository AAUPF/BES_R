require 'test_helper'

class Health10sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health10 = health10s(:one)
  end

  test "should get index" do
    get health10s_url
    assert_response :success
  end

  test "should get new" do
    get new_health10_url
    assert_response :success
  end

  test "should create health10" do
    assert_difference('Health10.count') do
      post health10s_url, params: { health10: { Achievement: @health10.Achievement, Antigenname: @health10.Antigenname, Target: @health10.Target, Year: @health10.Year } }
    end

    assert_redirected_to health10_url(Health10.last)
  end

  test "should show health10" do
    get health10_url(@health10)
    assert_response :success
  end

  test "should get edit" do
    get edit_health10_url(@health10)
    assert_response :success
  end

  test "should update health10" do
    patch health10_url(@health10), params: { health10: { Achievement: @health10.Achievement, Antigenname: @health10.Antigenname, Target: @health10.Target, Year: @health10.Year } }
    assert_redirected_to health10_url(@health10)
  end

  test "should destroy health10" do
    assert_difference('Health10.count', -1) do
      delete health10_url(@health10)
    end

    assert_redirected_to health10s_url
  end
end
