require 'test_helper'

class Roads6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roads6 = roads6s(:one)
  end

  test "should get index" do
    get roads6s_url
    assert_response :success
  end

  test "should get new" do
    get new_roads6_url
    assert_response :success
  end

  test "should create roads6" do
    assert_difference('Roads6.count') do
      post roads6s_url, params: { roads6: { Expenditure_on_NH_Development: @roads6.Expenditure_on_NH_Development, Expenditure_on_NH_Maintenance: @roads6.Expenditure_on_NH_Maintenance, Indicator: @roads6.Indicator, NH_in_kms: @roads6.NH_in_kms, Total_Expenditure_on_NH: @roads6.Total_Expenditure_on_NH, Year: @roads6.Year } }
    end

    assert_redirected_to roads6_url(Roads6.last)
  end

  test "should show roads6" do
    get roads6_url(@roads6)
    assert_response :success
  end

  test "should get edit" do
    get edit_roads6_url(@roads6)
    assert_response :success
  end

  test "should update roads6" do
    patch roads6_url(@roads6), params: { roads6: { Expenditure_on_NH_Development: @roads6.Expenditure_on_NH_Development, Expenditure_on_NH_Maintenance: @roads6.Expenditure_on_NH_Maintenance, Indicator: @roads6.Indicator, NH_in_kms: @roads6.NH_in_kms, Total_Expenditure_on_NH: @roads6.Total_Expenditure_on_NH, Year: @roads6.Year } }
    assert_redirected_to roads6_url(@roads6)
  end

  test "should destroy roads6" do
    assert_difference('Roads6.count', -1) do
      delete roads6_url(@roads6)
    end

    assert_redirected_to roads6s_url
  end
end
