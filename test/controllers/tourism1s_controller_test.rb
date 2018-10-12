require 'test_helper'

class Tourism1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tourism1 = tourism1s(:one)
  end

  test "should get index" do
    get tourism1s_url
    assert_response :success
  end

  test "should get new" do
    get new_tourism1_url
    assert_response :success
  end

  test "should create tourism1" do
    assert_difference('Tourism1.count') do
      post tourism1s_url, params: { tourism1: { Budget_Estimate: @tourism1.Budget_Estimate, Expenditure: @tourism1.Expenditure, Expenditure_as_percentage_of_Budget: @tourism1.Expenditure_as_percentage_of_Budget, Year: @tourism1.Year } }
    end

    assert_redirected_to tourism1_url(Tourism1.last)
  end

  test "should show tourism1" do
    get tourism1_url(@tourism1)
    assert_response :success
  end

  test "should get edit" do
    get edit_tourism1_url(@tourism1)
    assert_response :success
  end

  test "should update tourism1" do
    patch tourism1_url(@tourism1), params: { tourism1: { Budget_Estimate: @tourism1.Budget_Estimate, Expenditure: @tourism1.Expenditure, Expenditure_as_percentage_of_Budget: @tourism1.Expenditure_as_percentage_of_Budget, Year: @tourism1.Year } }
    assert_redirected_to tourism1_url(@tourism1)
  end

  test "should destroy tourism1" do
    assert_difference('Tourism1.count', -1) do
      delete tourism1_url(@tourism1)
    end

    assert_redirected_to tourism1s_url
  end
end
