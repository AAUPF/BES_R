require 'test_helper'

class SupportInstitutions2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @support_institutions2 = support_institutions2s(:one)
  end

  test "should get index" do
    get support_institutions2s_url
    assert_response :success
  end

  test "should get new" do
    get new_support_institutions2_url
    assert_response :success
  end

  test "should create support_institutions2" do
    assert_difference('SupportInstitutions2.count') do
      post support_institutions2s_url, params: { support_institutions2: { Amount_Allotted_Rs_lakh: @support_institutions2.Amount_Allotted_Rs_lakh, Amount_Spent_in_Percentage: @support_institutions2.Amount_Spent_in_Percentage, Amount_spent_Rs_lakh: @support_institutions2.Amount_spent_Rs_lakh, Number_of_Entrepreneurs_benefited: @support_institutions2.Number_of_Entrepreneurs_benefited, Year: @support_institutions2.Year } }
    end

    assert_redirected_to support_institutions2_url(SupportInstitutions2.last)
  end

  test "should show support_institutions2" do
    get support_institutions2_url(@support_institutions2)
    assert_response :success
  end

  test "should get edit" do
    get edit_support_institutions2_url(@support_institutions2)
    assert_response :success
  end

  test "should update support_institutions2" do
    patch support_institutions2_url(@support_institutions2), params: { support_institutions2: { Amount_Allotted_Rs_lakh: @support_institutions2.Amount_Allotted_Rs_lakh, Amount_Spent_in_Percentage: @support_institutions2.Amount_Spent_in_Percentage, Amount_spent_Rs_lakh: @support_institutions2.Amount_spent_Rs_lakh, Number_of_Entrepreneurs_benefited: @support_institutions2.Number_of_Entrepreneurs_benefited, Year: @support_institutions2.Year } }
    assert_redirected_to support_institutions2_url(@support_institutions2)
  end

  test "should destroy support_institutions2" do
    assert_difference('SupportInstitutions2.count', -1) do
      delete support_institutions2_url(@support_institutions2)
    end

    assert_redirected_to support_institutions2s_url
  end
end
