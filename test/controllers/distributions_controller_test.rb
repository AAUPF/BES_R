require 'test_helper'

class DistributionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distribution = distributions(:one)
  end

  test "should get index" do
    get distributions_url
    assert_response :success
  end

  test "should get new" do
    get new_distribution_url
    assert_response :success
  end

  test "should create distribution" do
    assert_difference('Distribution.count') do
      post distributions_url, params: { distribution: { Agriculture_Consumer: @distribution.Agriculture_Consumer, Commercial_Consumer: @distribution.Commercial_Consumer, Domestic_Consumer: @distribution.Domestic_Consumer, Industrial_HT_Consumer: @distribution.Industrial_HT_Consumer, Industrial_LT_Consumer: @distribution.Industrial_LT_Consumer, Percentage_of_Agriculture_Consumer: @distribution.Percentage_of_Agriculture_Consumer, Percentage_of_Commercial_Consumer: @distribution.Percentage_of_Commercial_Consumer, Percentage_of_Domestic_Consumer: @distribution.Percentage_of_Domestic_Consumer, Percentage_of_Industrial_HT_Consumer: @distribution.Percentage_of_Industrial_HT_Consumer, Percentage_of_Industrial_LT_Consumer: @distribution.Percentage_of_Industrial_LT_Consumer, Percentage_of_Public_Lighting_Consumer: @distribution.Percentage_of_Public_Lighting_Consumer, Percentage_of_Public_Water_Works_Consumer: @distribution.Percentage_of_Public_Water_Works_Consumer, Percentage_of_Total_Consumer: @distribution.Percentage_of_Total_Consumer, Public_Lighting_Consumer: @distribution.Public_Lighting_Consumer, Public_Water_Works_Consumer: @distribution.Public_Water_Works_Consumer, Total_Consumer: @distribution.Total_Consumer, Traction_Consumer: @distribution.Traction_Consumer, Year: @distribution.Year } }
    end

    assert_redirected_to distribution_url(Distribution.last)
  end

  test "should show distribution" do
    get distribution_url(@distribution)
    assert_response :success
  end

  test "should get edit" do
    get edit_distribution_url(@distribution)
    assert_response :success
  end

  test "should update distribution" do
    patch distribution_url(@distribution), params: { distribution: { Agriculture_Consumer: @distribution.Agriculture_Consumer, Commercial_Consumer: @distribution.Commercial_Consumer, Domestic_Consumer: @distribution.Domestic_Consumer, Industrial_HT_Consumer: @distribution.Industrial_HT_Consumer, Industrial_LT_Consumer: @distribution.Industrial_LT_Consumer, Percentage_of_Agriculture_Consumer: @distribution.Percentage_of_Agriculture_Consumer, Percentage_of_Commercial_Consumer: @distribution.Percentage_of_Commercial_Consumer, Percentage_of_Domestic_Consumer: @distribution.Percentage_of_Domestic_Consumer, Percentage_of_Industrial_HT_Consumer: @distribution.Percentage_of_Industrial_HT_Consumer, Percentage_of_Industrial_LT_Consumer: @distribution.Percentage_of_Industrial_LT_Consumer, Percentage_of_Public_Lighting_Consumer: @distribution.Percentage_of_Public_Lighting_Consumer, Percentage_of_Public_Water_Works_Consumer: @distribution.Percentage_of_Public_Water_Works_Consumer, Percentage_of_Total_Consumer: @distribution.Percentage_of_Total_Consumer, Public_Lighting_Consumer: @distribution.Public_Lighting_Consumer, Public_Water_Works_Consumer: @distribution.Public_Water_Works_Consumer, Total_Consumer: @distribution.Total_Consumer, Traction_Consumer: @distribution.Traction_Consumer, Year: @distribution.Year } }
    assert_redirected_to distribution_url(@distribution)
  end

  test "should destroy distribution" do
    assert_difference('Distribution.count', -1) do
      delete distribution_url(@distribution)
    end

    assert_redirected_to distributions_url
  end
end
