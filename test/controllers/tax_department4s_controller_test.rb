require 'test_helper'

class TaxDepartment4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_department4 = tax_department4s(:one)
  end

  test "should get index" do
    get tax_department4s_url
    assert_response :success
  end

  test "should get new" do
    get new_tax_department4_url
    assert_response :success
  end

  test "should create tax_department4" do
    assert_difference('TaxDepartment4.count') do
      post tax_department4s_url, params: { tax_department4: { 2012-13: @tax_department4.2012-13, 2013-14: @tax_department4.2013-14, 2014-15: @tax_department4.2014-15, 2015-16: @tax_department4.2015-16, 2016-17: @tax_department4.2016-17, Sector: @tax_department4.Sector } }
    end

    assert_redirected_to tax_department4_url(TaxDepartment4.last)
  end

  test "should show tax_department4" do
    get tax_department4_url(@tax_department4)
    assert_response :success
  end

  test "should get edit" do
    get edit_tax_department4_url(@tax_department4)
    assert_response :success
  end

  test "should update tax_department4" do
    patch tax_department4_url(@tax_department4), params: { tax_department4: { 2012-13: @tax_department4.2012-13, 2013-14: @tax_department4.2013-14, 2014-15: @tax_department4.2014-15, 2015-16: @tax_department4.2015-16, 2016-17: @tax_department4.2016-17, Sector: @tax_department4.Sector } }
    assert_redirected_to tax_department4_url(@tax_department4)
  end

  test "should destroy tax_department4" do
    assert_difference('TaxDepartment4.count', -1) do
      delete tax_department4_url(@tax_department4)
    end

    assert_redirected_to tax_department4s_url
  end
end
