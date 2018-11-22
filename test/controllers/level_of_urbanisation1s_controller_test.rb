require 'test_helper'

class LevelOfUrbanisation1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level_of_urbanisation1 = level_of_urbanisation1s(:one)
  end

  test "should get index" do
    get level_of_urbanisation1s_url
    assert_response :success
  end

  test "should get new" do
    get new_level_of_urbanisation1_url
    assert_response :success
  end

  test "should create level_of_urbanisation1" do
    assert_difference('LevelOfUrbanisation1.count') do
      post level_of_urbanisation1s_url, params: { level_of_urbanisation1: { Bihar: @level_of_urbanisation1.Bihar, India: @level_of_urbanisation1.India, Indicator: @level_of_urbanisation1.Indicator, Year: @level_of_urbanisation1.Year } }
    end

    assert_redirected_to level_of_urbanisation1_url(LevelOfUrbanisation1.last)
  end

  test "should show level_of_urbanisation1" do
    get level_of_urbanisation1_url(@level_of_urbanisation1)
    assert_response :success
  end

  test "should get edit" do
    get edit_level_of_urbanisation1_url(@level_of_urbanisation1)
    assert_response :success
  end

  test "should update level_of_urbanisation1" do
    patch level_of_urbanisation1_url(@level_of_urbanisation1), params: { level_of_urbanisation1: { Bihar: @level_of_urbanisation1.Bihar, India: @level_of_urbanisation1.India, Indicator: @level_of_urbanisation1.Indicator, Year: @level_of_urbanisation1.Year } }
    assert_redirected_to level_of_urbanisation1_url(@level_of_urbanisation1)
  end

  test "should destroy level_of_urbanisation1" do
    assert_difference('LevelOfUrbanisation1.count', -1) do
      delete level_of_urbanisation1_url(@level_of_urbanisation1)
    end

    assert_redirected_to level_of_urbanisation1s_url
  end
end
