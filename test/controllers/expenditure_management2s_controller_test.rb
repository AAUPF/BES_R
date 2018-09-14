require 'test_helper'

class ExpenditureManagement2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expenditure_management2 = expenditure_management2s(:one)
  end

  test "should get index" do
    get expenditure_management2s_url
    assert_response :success
  end

  test "should get new" do
    get new_expenditure_management2_url
    assert_response :success
  end

  test "should create expenditure_management2" do
    assert_difference('ExpenditureManagement2.count') do
      post expenditure_management2s_url, params: { expenditure_management2: { 2012-13: @expenditure_management2.2012-13, 2013-14: @expenditure_management2.2013-14, 2014-15: @expenditure_management2.2014-15, 2015-16: @expenditure_management2.2015-16, 2016-17: @expenditure_management2.2016-17, 2017-18_BE: @expenditure_management2.2017-18_BE, Sector: @expenditure_management2.Sector } }
    end

    assert_redirected_to expenditure_management2_url(ExpenditureManagement2.last)
  end

  test "should show expenditure_management2" do
    get expenditure_management2_url(@expenditure_management2)
    assert_response :success
  end

  test "should get edit" do
    get edit_expenditure_management2_url(@expenditure_management2)
    assert_response :success
  end

  test "should update expenditure_management2" do
    patch expenditure_management2_url(@expenditure_management2), params: { expenditure_management2: { 2012-13: @expenditure_management2.2012-13, 2013-14: @expenditure_management2.2013-14, 2014-15: @expenditure_management2.2014-15, 2015-16: @expenditure_management2.2015-16, 2016-17: @expenditure_management2.2016-17, 2017-18_BE: @expenditure_management2.2017-18_BE, Sector: @expenditure_management2.Sector } }
    assert_redirected_to expenditure_management2_url(@expenditure_management2)
  end

  test "should destroy expenditure_management2" do
    assert_difference('ExpenditureManagement2.count', -1) do
      delete expenditure_management2_url(@expenditure_management2)
    end

    assert_redirected_to expenditure_management2s_url
  end
end
