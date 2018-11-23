require 'test_helper'

class LevelOfUrbanisation3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level_of_urbanisation3 = level_of_urbanisation3s(:one)
  end

  test "should get index" do
    get level_of_urbanisation3s_url
    assert_response :success
  end

  test "should get new" do
    get new_level_of_urbanisation3_url
    assert_response :success
  end

  test "should create level_of_urbanisation3" do
    assert_difference('LevelOfUrbanisation3.count') do
      post level_of_urbanisation3s_url, params: { level_of_urbanisation3: { Districts: @level_of_urbanisation3.Districts, Urbanisation: @level_of_urbanisation3.Urbanisation, Year: @level_of_urbanisation3.Year } }
    end

    assert_redirected_to level_of_urbanisation3_url(LevelOfUrbanisation3.last)
  end

  test "should show level_of_urbanisation3" do
    get level_of_urbanisation3_url(@level_of_urbanisation3)
    assert_response :success
  end

  test "should get edit" do
    get edit_level_of_urbanisation3_url(@level_of_urbanisation3)
    assert_response :success
  end

  test "should update level_of_urbanisation3" do
    patch level_of_urbanisation3_url(@level_of_urbanisation3), params: { level_of_urbanisation3: { Districts: @level_of_urbanisation3.Districts, Urbanisation: @level_of_urbanisation3.Urbanisation, Year: @level_of_urbanisation3.Year } }
    assert_redirected_to level_of_urbanisation3_url(@level_of_urbanisation3)
  end

  test "should destroy level_of_urbanisation3" do
    assert_difference('LevelOfUrbanisation3.count', -1) do
      delete level_of_urbanisation3_url(@level_of_urbanisation3)
    end

    assert_redirected_to level_of_urbanisation3s_url
  end
end
