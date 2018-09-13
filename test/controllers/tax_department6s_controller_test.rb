require 'test_helper'

class TaxDepartment6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_department6 = tax_department6s(:one)
  end

  test "should get index" do
    get tax_department6s_url
    assert_response :success
  end

  test "should get new" do
    get new_tax_department6_url
    assert_response :success
  end

  test "should create tax_department6" do
    assert_difference('TaxDepartment6.count') do
      post tax_department6s_url, params: { tax_department6: { Districts: @tax_department6.Districts, Number_of_Document: @tax_department6.Number_of_Document, Registration_Fees: @tax_department6.Registration_Fees, Stamp_Fee: @tax_department6.Stamp_Fee, Target: @tax_department6.Target, Total_Receipt: @tax_department6.Total_Receipt, Year: @tax_department6.Year } }
    end

    assert_redirected_to tax_department6_url(TaxDepartment6.last)
  end

  test "should show tax_department6" do
    get tax_department6_url(@tax_department6)
    assert_response :success
  end

  test "should get edit" do
    get edit_tax_department6_url(@tax_department6)
    assert_response :success
  end

  test "should update tax_department6" do
    patch tax_department6_url(@tax_department6), params: { tax_department6: { Districts: @tax_department6.Districts, Number_of_Document: @tax_department6.Number_of_Document, Registration_Fees: @tax_department6.Registration_Fees, Stamp_Fee: @tax_department6.Stamp_Fee, Target: @tax_department6.Target, Total_Receipt: @tax_department6.Total_Receipt, Year: @tax_department6.Year } }
    assert_redirected_to tax_department6_url(@tax_department6)
  end

  test "should destroy tax_department6" do
    assert_difference('TaxDepartment6.count', -1) do
      delete tax_department6_url(@tax_department6)
    end

    assert_redirected_to tax_department6s_url
  end
end
