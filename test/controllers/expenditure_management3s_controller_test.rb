require 'test_helper'

class ExpenditureManagement3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expenditure_management3 = expenditure_management3s(:one)
  end

  test "should get index" do
    get expenditure_management3s_url
    assert_response :success
  end

  test "should get new" do
    get new_expenditure_management3_url
    assert_response :success
  end

  test "should create expenditure_management3" do
    assert_difference('ExpenditureManagement3.count') do
      post expenditure_management3s_url, params: { expenditure_management3: { 2012-13: @expenditure_management3.2012-13, 2012-17: @expenditure_management3.2012-17, 2013-14: @expenditure_management3.2013-14, 2014-15: @expenditure_management3.2014-15, 2015-16: @expenditure_management3.2015-16, 2016-17: @expenditure_management3.2016-17, 2017-18_BE: @expenditure_management3.2017-18_BE, Sector: @expenditure_management3.Sector } }
    end

    assert_redirected_to expenditure_management3_url(ExpenditureManagement3.last)
  end

  test "should show expenditure_management3" do
    get expenditure_management3_url(@expenditure_management3)
    assert_response :success
  end

  test "should get edit" do
    get edit_expenditure_management3_url(@expenditure_management3)
    assert_response :success
  end

  test "should update expenditure_management3" do
    patch expenditure_management3_url(@expenditure_management3), params: { expenditure_management3: { 2012-13: @expenditure_management3.2012-13, 2012-17: @expenditure_management3.2012-17, 2013-14: @expenditure_management3.2013-14, 2014-15: @expenditure_management3.2014-15, 2015-16: @expenditure_management3.2015-16, 2016-17: @expenditure_management3.2016-17, 2017-18_BE: @expenditure_management3.2017-18_BE, Sector: @expenditure_management3.Sector } }
    assert_redirected_to expenditure_management3_url(@expenditure_management3)
  end

  test "should destroy expenditure_management3" do
    assert_difference('ExpenditureManagement3.count', -1) do
      delete expenditure_management3_url(@expenditure_management3)
    end

    assert_redirected_to expenditure_management3s_url
  end
end
