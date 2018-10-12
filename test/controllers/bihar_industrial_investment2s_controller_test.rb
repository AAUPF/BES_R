require 'test_helper'

class BiharIndustrialInvestment2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bihar_industrial_investment2 = bihar_industrial_investment2s(:one)
  end

  test "should get index" do
    get bihar_industrial_investment2s_url
    assert_response :success
  end

  test "should get new" do
    get new_bihar_industrial_investment2_url
    assert_response :success
  end

  test "should create bihar_industrial_investment2" do
    assert_difference('BiharIndustrialInvestment2.count') do
      post bihar_industrial_investment2s_url, params: { bihar_industrial_investment2: { Number_of_Units: @bihar_industrial_investment2.Number_of_Units, Sectors: @bihar_industrial_investment2.Sectors } }
    end

    assert_redirected_to bihar_industrial_investment2_url(BiharIndustrialInvestment2.last)
  end

  test "should show bihar_industrial_investment2" do
    get bihar_industrial_investment2_url(@bihar_industrial_investment2)
    assert_response :success
  end

  test "should get edit" do
    get edit_bihar_industrial_investment2_url(@bihar_industrial_investment2)
    assert_response :success
  end

  test "should update bihar_industrial_investment2" do
    patch bihar_industrial_investment2_url(@bihar_industrial_investment2), params: { bihar_industrial_investment2: { Number_of_Units: @bihar_industrial_investment2.Number_of_Units, Sectors: @bihar_industrial_investment2.Sectors } }
    assert_redirected_to bihar_industrial_investment2_url(@bihar_industrial_investment2)
  end

  test "should destroy bihar_industrial_investment2" do
    assert_difference('BiharIndustrialInvestment2.count', -1) do
      delete bihar_industrial_investment2_url(@bihar_industrial_investment2)
    end

    assert_redirected_to bihar_industrial_investment2s_url
  end
end
