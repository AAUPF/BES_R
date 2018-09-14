require 'test_helper'

class ExpenditureManagement1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expenditure_management1 = expenditure_management1s(:one)
  end

  test "should get index" do
    get expenditure_management1s_url
    assert_response :success
  end

  test "should get new" do
    get new_expenditure_management1_url
    assert_response :success
  end

  test "should create expenditure_management1" do
    assert_difference('ExpenditureManagement1.count') do
      post expenditure_management1s_url, params: { expenditure_management1: { 2012-13: @expenditure_management1.2012-13, 2013-14: @expenditure_management1.2013-14, 2014-15: @expenditure_management1.2014-15, 2015-16: @expenditure_management1.2015-16, 2016-17: @expenditure_management1.2016-17, 2017-18_BE: @expenditure_management1.2017-18_BE, Sector: @expenditure_management1.Sector } }
    end

    assert_redirected_to expenditure_management1_url(ExpenditureManagement1.last)
  end

  test "should show expenditure_management1" do
    get expenditure_management1_url(@expenditure_management1)
    assert_response :success
  end

  test "should get edit" do
    get edit_expenditure_management1_url(@expenditure_management1)
    assert_response :success
  end

  test "should update expenditure_management1" do
    patch expenditure_management1_url(@expenditure_management1), params: { expenditure_management1: { 2012-13: @expenditure_management1.2012-13, 2013-14: @expenditure_management1.2013-14, 2014-15: @expenditure_management1.2014-15, 2015-16: @expenditure_management1.2015-16, 2016-17: @expenditure_management1.2016-17, 2017-18_BE: @expenditure_management1.2017-18_BE, Sector: @expenditure_management1.Sector } }
    assert_redirected_to expenditure_management1_url(@expenditure_management1)
  end

  test "should destroy expenditure_management1" do
    assert_difference('ExpenditureManagement1.count', -1) do
      delete expenditure_management1_url(@expenditure_management1)
    end

    assert_redirected_to expenditure_management1s_url
  end
end
