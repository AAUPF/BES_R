require 'test_helper'

class LevelOfUrbanisation2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level_of_urbanisation2 = level_of_urbanisation2s(:one)
  end

  test "should get index" do
    get level_of_urbanisation2s_url
    assert_response :success
  end

  test "should get new" do
    get new_level_of_urbanisation2_url
    assert_response :success
  end

  test "should create level_of_urbanisation2" do
    assert_difference('LevelOfUrbanisation2.count') do
      post level_of_urbanisation2s_url, params: { level_of_urbanisation2: { Growth_Rate_of_Population: @level_of_urbanisation2.Growth_Rate_of_Population, Number_2001: @level_of_urbanisation2.Number_2001, Number_2011: @level_of_urbanisation2.Number_2011, Population_million_2001: @level_of_urbanisation2.Population_million_2001, Population_million_2011: @level_of_urbanisation2.Population_million_2011, Size_Class: @level_of_urbanisation2.Size_Class } }
    end

    assert_redirected_to level_of_urbanisation2_url(LevelOfUrbanisation2.last)
  end

  test "should show level_of_urbanisation2" do
    get level_of_urbanisation2_url(@level_of_urbanisation2)
    assert_response :success
  end

  test "should get edit" do
    get edit_level_of_urbanisation2_url(@level_of_urbanisation2)
    assert_response :success
  end

  test "should update level_of_urbanisation2" do
    patch level_of_urbanisation2_url(@level_of_urbanisation2), params: { level_of_urbanisation2: { Growth_Rate_of_Population: @level_of_urbanisation2.Growth_Rate_of_Population, Number_2001: @level_of_urbanisation2.Number_2001, Number_2011: @level_of_urbanisation2.Number_2011, Population_million_2001: @level_of_urbanisation2.Population_million_2001, Population_million_2011: @level_of_urbanisation2.Population_million_2011, Size_Class: @level_of_urbanisation2.Size_Class } }
    assert_redirected_to level_of_urbanisation2_url(@level_of_urbanisation2)
  end

  test "should destroy level_of_urbanisation2" do
    assert_difference('LevelOfUrbanisation2.count', -1) do
      delete level_of_urbanisation2_url(@level_of_urbanisation2)
    end

    assert_redirected_to level_of_urbanisation2s_url
  end
end
