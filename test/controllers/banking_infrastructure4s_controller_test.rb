require 'test_helper'

class BankingInfrastructure4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banking_infrastructure4 = banking_infrastructure4s(:one)
  end

  test "should get index" do
    get banking_infrastructure4s_url
    assert_response :success
  end

  test "should get new" do
    get new_banking_infrastructure4_url
    assert_response :success
  end

  test "should create banking_infrastructure4" do
    assert_difference('BankingInfrastructure4.count') do
      post banking_infrastructure4s_url, params: { banking_infrastructure4: { RRB_Branch: @banking_infrastructure4.RRB_Branch, Rural: @banking_infrastructure4.Rural, Semi_Urban: @banking_infrastructure4.Semi_Urban, Total: @banking_infrastructure4.Total, Urban: @banking_infrastructure4.Urban } }
    end

    assert_redirected_to banking_infrastructure4_url(BankingInfrastructure4.last)
  end

  test "should show banking_infrastructure4" do
    get banking_infrastructure4_url(@banking_infrastructure4)
    assert_response :success
  end

  test "should get edit" do
    get edit_banking_infrastructure4_url(@banking_infrastructure4)
    assert_response :success
  end

  test "should update banking_infrastructure4" do
    patch banking_infrastructure4_url(@banking_infrastructure4), params: { banking_infrastructure4: { RRB_Branch: @banking_infrastructure4.RRB_Branch, Rural: @banking_infrastructure4.Rural, Semi_Urban: @banking_infrastructure4.Semi_Urban, Total: @banking_infrastructure4.Total, Urban: @banking_infrastructure4.Urban } }
    assert_redirected_to banking_infrastructure4_url(@banking_infrastructure4)
  end

  test "should destroy banking_infrastructure4" do
    assert_difference('BankingInfrastructure4.count', -1) do
      delete banking_infrastructure4_url(@banking_infrastructure4)
    end

    assert_redirected_to banking_infrastructure4s_url
  end
end
