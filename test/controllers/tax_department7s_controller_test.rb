require 'test_helper'

class TaxDepartment7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_department7 = tax_department7s(:one)
  end

  test "should get index" do
    get tax_department7s_url
    assert_response :success
  end

  test "should get new" do
    get new_tax_department7_url
    assert_response :success
  end

  test "should create tax_department7" do
    assert_difference('TaxDepartment7.count') do
      post tax_department7s_url, params: { tax_department7: { ADV_Tax: @tax_department7.ADV_Tax, CST: @tax_department7.CST, Districts: @tax_department7.Districts, ED: @tax_department7.ED, ENT_Tax: @tax_department7.ENT_Tax, Entry_Tax: @tax_department7.Entry_Tax, LUX_Tax: @tax_department7.LUX_Tax, Professional_Tax: @tax_department7.Professional_Tax, Target: @tax_department7.Target, Total: @tax_department7.Total, VAT: @tax_department7.VAT, Year: @tax_department7.Year } }
    end

    assert_redirected_to tax_department7_url(TaxDepartment7.last)
  end

  test "should show tax_department7" do
    get tax_department7_url(@tax_department7)
    assert_response :success
  end

  test "should get edit" do
    get edit_tax_department7_url(@tax_department7)
    assert_response :success
  end

  test "should update tax_department7" do
    patch tax_department7_url(@tax_department7), params: { tax_department7: { ADV_Tax: @tax_department7.ADV_Tax, CST: @tax_department7.CST, Districts: @tax_department7.Districts, ED: @tax_department7.ED, ENT_Tax: @tax_department7.ENT_Tax, Entry_Tax: @tax_department7.Entry_Tax, LUX_Tax: @tax_department7.LUX_Tax, Professional_Tax: @tax_department7.Professional_Tax, Target: @tax_department7.Target, Total: @tax_department7.Total, VAT: @tax_department7.VAT, Year: @tax_department7.Year } }
    assert_redirected_to tax_department7_url(@tax_department7)
  end

  test "should destroy tax_department7" do
    assert_difference('TaxDepartment7.count', -1) do
      delete tax_department7_url(@tax_department7)
    end

    assert_redirected_to tax_department7s_url
  end
end
