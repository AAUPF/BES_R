require 'test_helper'

class SupportInstitutions1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @support_institutions1 = support_institutions1s(:one)
  end

  test "should get index" do
    get support_institutions1s_url
    assert_response :success
  end

  test "should get new" do
    get new_support_institutions1_url
    assert_response :success
  end

  test "should create support_institutions1" do
    assert_difference('SupportInstitutions1.count') do
      post support_institutions1s_url, params: { support_institutions1: { 2012-13: @support_institutions1.2012-13, 2013-14: @support_institutions1.2013-14, 2014-15: @support_institutions1.2014-15, 2015-16: @support_institutions1.2015-16, 2016-17: @support_institutions1.2016-17, CAGR: @support_institutions1.CAGR, Expenditure: @support_institutions1.Expenditure } }
    end

    assert_redirected_to support_institutions1_url(SupportInstitutions1.last)
  end

  test "should show support_institutions1" do
    get support_institutions1_url(@support_institutions1)
    assert_response :success
  end

  test "should get edit" do
    get edit_support_institutions1_url(@support_institutions1)
    assert_response :success
  end

  test "should update support_institutions1" do
    patch support_institutions1_url(@support_institutions1), params: { support_institutions1: { 2012-13: @support_institutions1.2012-13, 2013-14: @support_institutions1.2013-14, 2014-15: @support_institutions1.2014-15, 2015-16: @support_institutions1.2015-16, 2016-17: @support_institutions1.2016-17, CAGR: @support_institutions1.CAGR, Expenditure: @support_institutions1.Expenditure } }
    assert_redirected_to support_institutions1_url(@support_institutions1)
  end

  test "should destroy support_institutions1" do
    assert_difference('SupportInstitutions1.count', -1) do
      delete support_institutions1_url(@support_institutions1)
    end

    assert_redirected_to support_institutions1s_url
  end
end
