require 'test_helper'

class TaxDepartment2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_department2 = tax_department2s(:one)
  end

  test "should get index" do
    get tax_department2s_url
    assert_response :success
  end

  test "should get new" do
    get new_tax_department2_url
    assert_response :success
  end

  test "should create tax_department2" do
    assert_difference('TaxDepartment2.count') do
      post tax_department2s_url, params: { tax_department2: { 2012-13: @tax_department2.2012-13, 2013-14: @tax_department2.2013-14, 2014-15: @tax_department2.2014-15, 2015-16: @tax_department2.2015-16, 2016-17: @tax_department2.2016-17, 2017-18_BE: @tax_department2.2017-18_BE, Sector: @tax_department2.Sector } }
    end

    assert_redirected_to tax_department2_url(TaxDepartment2.last)
  end

  test "should show tax_department2" do
    get tax_department2_url(@tax_department2)
    assert_response :success
  end

  test "should get edit" do
    get edit_tax_department2_url(@tax_department2)
    assert_response :success
  end

  test "should update tax_department2" do
    patch tax_department2_url(@tax_department2), params: { tax_department2: { 2012-13: @tax_department2.2012-13, 2013-14: @tax_department2.2013-14, 2014-15: @tax_department2.2014-15, 2015-16: @tax_department2.2015-16, 2016-17: @tax_department2.2016-17, 2017-18_BE: @tax_department2.2017-18_BE, Sector: @tax_department2.Sector } }
    assert_redirected_to tax_department2_url(@tax_department2)
  end

  test "should destroy tax_department2" do
    assert_difference('TaxDepartment2.count', -1) do
      delete tax_department2_url(@tax_department2)
    end

    assert_redirected_to tax_department2s_url
  end
end
