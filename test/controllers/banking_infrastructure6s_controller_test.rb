require 'test_helper'

class BankingInfrastructure6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banking_infrastructure6 = banking_infrastructure6s(:one)
  end

  test "should get index" do
    get banking_infrastructure6s_url
    assert_response :success
  end

  test "should get new" do
    get new_banking_infrastructure6_url
    assert_response :success
  end

  test "should create banking_infrastructure6" do
    assert_difference('BankingInfrastructure6.count') do
      post banking_infrastructure6s_url, params: { banking_infrastructure6: { Clerks: @banking_infrastructure6.Clerks, Number_of_Female_Employees: @banking_infrastructure6.Number_of_Female_Employees, Officers: @banking_infrastructure6.Officers, Percentage_of_Clerks: @banking_infrastructure6.Percentage_of_Clerks, Percentage_of_Female_Employees: @banking_infrastructure6.Percentage_of_Female_Employees, Percentage_of_Officers: @banking_infrastructure6.Percentage_of_Officers, Percentage_of_Sub_ordinates: @banking_infrastructure6.Percentage_of_Sub_ordinates, Shelters_Sanctioned_Planned: @banking_infrastructure6.Shelters_Sanctioned_Planned, Sub_ordinates: @banking_infrastructure6.Sub_ordinates, Total: @banking_infrastructure6.Total, Total_Percentage: @banking_infrastructure6.Total_Percentage } }
    end

    assert_redirected_to banking_infrastructure6_url(BankingInfrastructure6.last)
  end

  test "should show banking_infrastructure6" do
    get banking_infrastructure6_url(@banking_infrastructure6)
    assert_response :success
  end

  test "should get edit" do
    get edit_banking_infrastructure6_url(@banking_infrastructure6)
    assert_response :success
  end

  test "should update banking_infrastructure6" do
    patch banking_infrastructure6_url(@banking_infrastructure6), params: { banking_infrastructure6: { Clerks: @banking_infrastructure6.Clerks, Number_of_Female_Employees: @banking_infrastructure6.Number_of_Female_Employees, Officers: @banking_infrastructure6.Officers, Percentage_of_Clerks: @banking_infrastructure6.Percentage_of_Clerks, Percentage_of_Female_Employees: @banking_infrastructure6.Percentage_of_Female_Employees, Percentage_of_Officers: @banking_infrastructure6.Percentage_of_Officers, Percentage_of_Sub_ordinates: @banking_infrastructure6.Percentage_of_Sub_ordinates, Shelters_Sanctioned_Planned: @banking_infrastructure6.Shelters_Sanctioned_Planned, Sub_ordinates: @banking_infrastructure6.Sub_ordinates, Total: @banking_infrastructure6.Total, Total_Percentage: @banking_infrastructure6.Total_Percentage } }
    assert_redirected_to banking_infrastructure6_url(@banking_infrastructure6)
  end

  test "should destroy banking_infrastructure6" do
    assert_difference('BankingInfrastructure6.count', -1) do
      delete banking_infrastructure6_url(@banking_infrastructure6)
    end

    assert_redirected_to banking_infrastructure6s_url
  end
end
