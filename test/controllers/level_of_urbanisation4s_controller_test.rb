require 'test_helper'

class LevelOfUrbanisation4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level_of_urbanisation4 = level_of_urbanisation4s(:one)
  end

  test "should get index" do
    get level_of_urbanisation4s_url
    assert_response :success
  end

  test "should get new" do
    get new_level_of_urbanisation4_url
    assert_response :success
  end

  test "should create level_of_urbanisation4" do
    assert_difference('LevelOfUrbanisation4.count') do
      post level_of_urbanisation4s_url, params: { level_of_urbanisation4: { City_Size: @level_of_urbanisation4.City_Size, Households_connected_to_covered_drainage: @level_of_urbanisation4.Households_connected_to_covered_drainage, Households_with_access_to_piped_sewer_connected_to_latrines: @level_of_urbanisation4.Households_with_access_to_piped_sewer_connected_to_latrines, Households_with_tap_water_within_premises: @level_of_urbanisation4.Households_with_tap_water_within_premises } }
    end

    assert_redirected_to level_of_urbanisation4_url(LevelOfUrbanisation4.last)
  end

  test "should show level_of_urbanisation4" do
    get level_of_urbanisation4_url(@level_of_urbanisation4)
    assert_response :success
  end

  test "should get edit" do
    get edit_level_of_urbanisation4_url(@level_of_urbanisation4)
    assert_response :success
  end

  test "should update level_of_urbanisation4" do
    patch level_of_urbanisation4_url(@level_of_urbanisation4), params: { level_of_urbanisation4: { City_Size: @level_of_urbanisation4.City_Size, Households_connected_to_covered_drainage: @level_of_urbanisation4.Households_connected_to_covered_drainage, Households_with_access_to_piped_sewer_connected_to_latrines: @level_of_urbanisation4.Households_with_access_to_piped_sewer_connected_to_latrines, Households_with_tap_water_within_premises: @level_of_urbanisation4.Households_with_tap_water_within_premises } }
    assert_redirected_to level_of_urbanisation4_url(@level_of_urbanisation4)
  end

  test "should destroy level_of_urbanisation4" do
    assert_difference('LevelOfUrbanisation4.count', -1) do
      delete level_of_urbanisation4_url(@level_of_urbanisation4)
    end

    assert_redirected_to level_of_urbanisation4s_url
  end
end
