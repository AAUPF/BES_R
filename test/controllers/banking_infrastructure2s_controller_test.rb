require 'test_helper'

class BankingInfrastructure2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banking_infrastructure2 = banking_infrastructure2s(:one)
  end

  test "should get index" do
    get banking_infrastructure2s_url
    assert_response :success
  end

  test "should get new" do
    get new_banking_infrastructure2_url
    assert_response :success
  end

  test "should create banking_infrastructure2" do
    assert_difference('BankingInfrastructure2.count') do
      post banking_infrastructure2s_url, params: { banking_infrastructure2: { Number_of_Branches: @banking_infrastructure2.Number_of_Branches, Percentage_share_in_all_India_branches: @banking_infrastructure2.Percentage_share_in_all_India_branches, Percentage_share_in_all_India_population: @banking_infrastructure2.Percentage_share_in_all_India_population, States: @banking_infrastructure2.States } }
    end

    assert_redirected_to banking_infrastructure2_url(BankingInfrastructure2.last)
  end

  test "should show banking_infrastructure2" do
    get banking_infrastructure2_url(@banking_infrastructure2)
    assert_response :success
  end

  test "should get edit" do
    get edit_banking_infrastructure2_url(@banking_infrastructure2)
    assert_response :success
  end

  test "should update banking_infrastructure2" do
    patch banking_infrastructure2_url(@banking_infrastructure2), params: { banking_infrastructure2: { Number_of_Branches: @banking_infrastructure2.Number_of_Branches, Percentage_share_in_all_India_branches: @banking_infrastructure2.Percentage_share_in_all_India_branches, Percentage_share_in_all_India_population: @banking_infrastructure2.Percentage_share_in_all_India_population, States: @banking_infrastructure2.States } }
    assert_redirected_to banking_infrastructure2_url(@banking_infrastructure2)
  end

  test "should destroy banking_infrastructure2" do
    assert_difference('BankingInfrastructure2.count', -1) do
      delete banking_infrastructure2_url(@banking_infrastructure2)
    end

    assert_redirected_to banking_infrastructure2s_url
  end
end
