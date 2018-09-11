require 'test_helper'

class ExpenditureManagementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expenditure_management = expenditure_managements(:one)
  end

  test "should get index" do
    get expenditure_managements_url
    assert_response :success
  end

  test "should get new" do
    get new_expenditure_management_url
    assert_response :success
  end

  test "should create expenditure_management" do
    assert_difference('ExpenditureManagement.count') do
      post expenditure_managements_url, params: { expenditure_management: { 2012-13: @expenditure_management.2012-13, 2013-14: @expenditure_management.2013-14, 2014-15: @expenditure_management.2014-15, 2015-16: @expenditure_management.2015-16, 2016-17: @expenditure_management.2016-17, 2017-18_BE: @expenditure_management.2017-18_BE, Sector: @expenditure_management.Sector } }
    end

    assert_redirected_to expenditure_management_url(ExpenditureManagement.last)
  end

  test "should show expenditure_management" do
    get expenditure_management_url(@expenditure_management)
    assert_response :success
  end

  test "should get edit" do
    get edit_expenditure_management_url(@expenditure_management)
    assert_response :success
  end

  test "should update expenditure_management" do
    patch expenditure_management_url(@expenditure_management), params: { expenditure_management: { 2012-13: @expenditure_management.2012-13, 2013-14: @expenditure_management.2013-14, 2014-15: @expenditure_management.2014-15, 2015-16: @expenditure_management.2015-16, 2016-17: @expenditure_management.2016-17, 2017-18_BE: @expenditure_management.2017-18_BE, Sector: @expenditure_management.Sector } }
    assert_redirected_to expenditure_management_url(@expenditure_management)
  end

  test "should destroy expenditure_management" do
    assert_difference('ExpenditureManagement.count', -1) do
      delete expenditure_management_url(@expenditure_management)
    end

    assert_redirected_to expenditure_managements_url
  end
end
