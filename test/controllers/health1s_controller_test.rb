require 'test_helper'

class Health1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health1 = health1s(:one)
  end

  test "should get index" do
    get health1s_url
    assert_response :success
  end

  test "should get new" do
    get new_health1_url
    assert_response :success
  end

  test "should create health1" do
    assert_difference('Health1.count') do
      post health1s_url, params: { health1: { Per_Capita_Expenditure_on_Social_Services_Bihar: @health1.Per_Capita_Expenditure_on_Social_Services_Bihar, Per_Capita_Expenditure_on_Social_Services_India: @health1.Per_Capita_Expenditure_on_Social_Services_India, Percentage_share_of_Social_Services_in_Total_Expenditure_Bihar: @health1.Percentage_share_of_Social_Services_in_Total_Expenditure_Bihar, Percentage_share_of_Social_Services_in_Total_Expenditure_India: @health1.Percentage_share_of_Social_Services_in_Total_Expenditure_India, Total_Expense_Bihar: @health1.Total_Expense_Bihar, Total_Expense_India: @health1.Total_Expense_India, Total_Expense_on_Social_Services_Bihar: @health1.Total_Expense_on_Social_Services_Bihar, Total_Expense_on_Social_Services_India: @health1.Total_Expense_on_Social_Services_India, Year: @health1.Year } }
    end

    assert_redirected_to health1_url(Health1.last)
  end

  test "should show health1" do
    get health1_url(@health1)
    assert_response :success
  end

  test "should get edit" do
    get edit_health1_url(@health1)
    assert_response :success
  end

  test "should update health1" do
    patch health1_url(@health1), params: { health1: { Per_Capita_Expenditure_on_Social_Services_Bihar: @health1.Per_Capita_Expenditure_on_Social_Services_Bihar, Per_Capita_Expenditure_on_Social_Services_India: @health1.Per_Capita_Expenditure_on_Social_Services_India, Percentage_share_of_Social_Services_in_Total_Expenditure_Bihar: @health1.Percentage_share_of_Social_Services_in_Total_Expenditure_Bihar, Percentage_share_of_Social_Services_in_Total_Expenditure_India: @health1.Percentage_share_of_Social_Services_in_Total_Expenditure_India, Total_Expense_Bihar: @health1.Total_Expense_Bihar, Total_Expense_India: @health1.Total_Expense_India, Total_Expense_on_Social_Services_Bihar: @health1.Total_Expense_on_Social_Services_Bihar, Total_Expense_on_Social_Services_India: @health1.Total_Expense_on_Social_Services_India, Year: @health1.Year } }
    assert_redirected_to health1_url(@health1)
  end

  test "should destroy health1" do
    assert_difference('Health1.count', -1) do
      delete health1_url(@health1)
    end

    assert_redirected_to health1s_url
  end
end
