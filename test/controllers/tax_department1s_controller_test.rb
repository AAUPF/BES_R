require 'test_helper'

class TaxDepartment1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_department1 = tax_department1s(:one)
  end

  test "should get index" do
    get tax_department1s_url
    assert_response :success
  end

  test "should get new" do
    get new_tax_department1_url
    assert_response :success
  end

  test "should create tax_department1" do
    assert_difference('TaxDepartment1.count') do
      post tax_department1s_url, params: { tax_department1: { ADV: @tax_department1.ADV, BST/VAT: @tax_department1.BST/VAT, CST: @tax_department1.CST, ED: @tax_department1.ED, ENT: @tax_department1.ENT, ET: @tax_department1.ET, HLT: @tax_department1.HLT, PT: @tax_department1.PT, Total: @tax_department1.Total, Year: @tax_department1.Year } }
    end

    assert_redirected_to tax_department1_url(TaxDepartment1.last)
  end

  test "should show tax_department1" do
    get tax_department1_url(@tax_department1)
    assert_response :success
  end

  test "should get edit" do
    get edit_tax_department1_url(@tax_department1)
    assert_response :success
  end

  test "should update tax_department1" do
    patch tax_department1_url(@tax_department1), params: { tax_department1: { ADV: @tax_department1.ADV, BST/VAT: @tax_department1.BST/VAT, CST: @tax_department1.CST, ED: @tax_department1.ED, ENT: @tax_department1.ENT, ET: @tax_department1.ET, HLT: @tax_department1.HLT, PT: @tax_department1.PT, Total: @tax_department1.Total, Year: @tax_department1.Year } }
    assert_redirected_to tax_department1_url(@tax_department1)
  end

  test "should destroy tax_department1" do
    assert_difference('TaxDepartment1.count', -1) do
      delete tax_department1_url(@tax_department1)
    end

    assert_redirected_to tax_department1s_url
  end
end
