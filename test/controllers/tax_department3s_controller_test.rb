require 'test_helper'

class TaxDepartment3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_department3 = tax_department3s(:one)
  end

  test "should get index" do
    get tax_department3s_url
    assert_response :success
  end

  test "should get new" do
    get new_tax_department3_url
    assert_response :success
  end

  test "should create tax_department3" do
    assert_difference('TaxDepartment3.count') do
      post tax_department3s_url, params: { tax_department3: { Collection: @tax_department3.Collection, Name_of_Commodity: @tax_department3.Name_of_Commodity, Rate_of_Growth: @tax_department3.Rate_of_Growth, Year: @tax_department3.Year } }
    end

    assert_redirected_to tax_department3_url(TaxDepartment3.last)
  end

  test "should show tax_department3" do
    get tax_department3_url(@tax_department3)
    assert_response :success
  end

  test "should get edit" do
    get edit_tax_department3_url(@tax_department3)
    assert_response :success
  end

  test "should update tax_department3" do
    patch tax_department3_url(@tax_department3), params: { tax_department3: { Collection: @tax_department3.Collection, Name_of_Commodity: @tax_department3.Name_of_Commodity, Rate_of_Growth: @tax_department3.Rate_of_Growth, Year: @tax_department3.Year } }
    assert_redirected_to tax_department3_url(@tax_department3)
  end

  test "should destroy tax_department3" do
    assert_difference('TaxDepartment3.count', -1) do
      delete tax_department3_url(@tax_department3)
    end

    assert_redirected_to tax_department3s_url
  end
end
