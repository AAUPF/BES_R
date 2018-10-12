require 'test_helper'

class BiharStartUpPoliciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bihar_start_up_policy = bihar_start_up_policies(:one)
  end

  test "should get index" do
    get bihar_start_up_policies_url
    assert_response :success
  end

  test "should get new" do
    get new_bihar_start_up_policy_url
    assert_response :success
  end

  test "should create bihar_start_up_policy" do
    assert_difference('BiharStartUpPolicy.count') do
      post bihar_start_up_policies_url, params: { bihar_start_up_policy: { Incubators: @bihar_start_up_policy.Incubators, Number_of_Startups: @bihar_start_up_policy.Number_of_Startups } }
    end

    assert_redirected_to bihar_start_up_policy_url(BiharStartUpPolicy.last)
  end

  test "should show bihar_start_up_policy" do
    get bihar_start_up_policy_url(@bihar_start_up_policy)
    assert_response :success
  end

  test "should get edit" do
    get edit_bihar_start_up_policy_url(@bihar_start_up_policy)
    assert_response :success
  end

  test "should update bihar_start_up_policy" do
    patch bihar_start_up_policy_url(@bihar_start_up_policy), params: { bihar_start_up_policy: { Incubators: @bihar_start_up_policy.Incubators, Number_of_Startups: @bihar_start_up_policy.Number_of_Startups } }
    assert_redirected_to bihar_start_up_policy_url(@bihar_start_up_policy)
  end

  test "should destroy bihar_start_up_policy" do
    assert_difference('BiharStartUpPolicy.count', -1) do
      delete bihar_start_up_policy_url(@bihar_start_up_policy)
    end

    assert_redirected_to bihar_start_up_policies_url
  end
end
