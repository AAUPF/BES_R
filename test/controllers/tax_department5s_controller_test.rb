require 'test_helper'

class TaxDepartment5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_department5 = tax_department5s(:one)
  end

  test "should get index" do
    get tax_department5s_url
    assert_response :success
  end

  test "should get new" do
    get new_tax_department5_url
    assert_response :success
  end

  test "should create tax_department5" do
    assert_difference('TaxDepartment5.count') do
      post tax_department5s_url, params: { tax_department5: { Districts: @tax_department5.Districts, Number_of_Document: @tax_department5.Number_of_Document, Percentage_receipt_against_target: @tax_department5.Percentage_receipt_against_target, Receipt_per_Document: @tax_department5.Receipt_per_Document, Target: @tax_department5.Target, Total_Receipt: @tax_department5.Total_Receipt } }
    end

    assert_redirected_to tax_department5_url(TaxDepartment5.last)
  end

  test "should show tax_department5" do
    get tax_department5_url(@tax_department5)
    assert_response :success
  end

  test "should get edit" do
    get edit_tax_department5_url(@tax_department5)
    assert_response :success
  end

  test "should update tax_department5" do
    patch tax_department5_url(@tax_department5), params: { tax_department5: { Districts: @tax_department5.Districts, Number_of_Document: @tax_department5.Number_of_Document, Percentage_receipt_against_target: @tax_department5.Percentage_receipt_against_target, Receipt_per_Document: @tax_department5.Receipt_per_Document, Target: @tax_department5.Target, Total_Receipt: @tax_department5.Total_Receipt } }
    assert_redirected_to tax_department5_url(@tax_department5)
  end

  test "should destroy tax_department5" do
    assert_difference('TaxDepartment5.count', -1) do
      delete tax_department5_url(@tax_department5)
    end

    assert_redirected_to tax_department5s_url
  end
end
