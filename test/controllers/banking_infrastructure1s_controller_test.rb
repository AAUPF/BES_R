require 'test_helper'

class BankingInfrastructure1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banking_infrastructure1 = banking_infrastructure1s(:one)
  end

  test "should get index" do
    get banking_infrastructure1s_url
    assert_response :success
  end

  test "should get new" do
    get new_banking_infrastructure1_url
    assert_response :success
  end

  test "should create banking_infrastructure1" do
    assert_difference('BankingInfrastructure1.count') do
      post banking_infrastructure1s_url, params: { banking_infrastructure1: { Growth_Rate: @banking_infrastructure1.Growth_Rate, Percentage_distribution_of_Rural_branches: @banking_infrastructure1.Percentage_distribution_of_Rural_branches, Percentage_distribution_of_Semiurban_Branches: @banking_infrastructure1.Percentage_distribution_of_Semiurban_Branches, Percentage_distribution_of_Urban_branches: @banking_infrastructure1.Percentage_distribution_of_Urban_branches, Total: @banking_infrastructure1.Total, Years_End_March: @banking_infrastructure1.Years_End_March } }
    end

    assert_redirected_to banking_infrastructure1_url(BankingInfrastructure1.last)
  end

  test "should show banking_infrastructure1" do
    get banking_infrastructure1_url(@banking_infrastructure1)
    assert_response :success
  end

  test "should get edit" do
    get edit_banking_infrastructure1_url(@banking_infrastructure1)
    assert_response :success
  end

  test "should update banking_infrastructure1" do
    patch banking_infrastructure1_url(@banking_infrastructure1), params: { banking_infrastructure1: { Growth_Rate: @banking_infrastructure1.Growth_Rate, Percentage_distribution_of_Rural_branches: @banking_infrastructure1.Percentage_distribution_of_Rural_branches, Percentage_distribution_of_Semiurban_Branches: @banking_infrastructure1.Percentage_distribution_of_Semiurban_Branches, Percentage_distribution_of_Urban_branches: @banking_infrastructure1.Percentage_distribution_of_Urban_branches, Total: @banking_infrastructure1.Total, Years_End_March: @banking_infrastructure1.Years_End_March } }
    assert_redirected_to banking_infrastructure1_url(@banking_infrastructure1)
  end

  test "should destroy banking_infrastructure1" do
    assert_difference('BankingInfrastructure1.count', -1) do
      delete banking_infrastructure1_url(@banking_infrastructure1)
    end

    assert_redirected_to banking_infrastructure1s_url
  end
end
