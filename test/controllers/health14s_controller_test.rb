require 'test_helper'

class Health14sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health14 = health14s(:one)
  end

  test "should get index" do
    get health14s_url
    assert_response :success
  end

  test "should get new" do
    get new_health14_url
    assert_response :success
  end

  test "should create health14" do
    assert_difference('Health14.count') do
      post health14s_url, params: { health14: { Budget_for_ICDS_Bihar: @health14.Budget_for_ICDS_Bihar, Expenditure: @health14.Expenditure, Expenditure_as_Percentage_of_Fund_Released: @health14.Expenditure_as_Percentage_of_Fund_Released, Fund_Released_as_Percentage_of_Budget: @health14.Fund_Released_as_Percentage_of_Budget, Funds_Released_by_GOI: @health14.Funds_Released_by_GOI, Year: @health14.Year } }
    end

    assert_redirected_to health14_url(Health14.last)
  end

  test "should show health14" do
    get health14_url(@health14)
    assert_response :success
  end

  test "should get edit" do
    get edit_health14_url(@health14)
    assert_response :success
  end

  test "should update health14" do
    patch health14_url(@health14), params: { health14: { Budget_for_ICDS_Bihar: @health14.Budget_for_ICDS_Bihar, Expenditure: @health14.Expenditure, Expenditure_as_Percentage_of_Fund_Released: @health14.Expenditure_as_Percentage_of_Fund_Released, Fund_Released_as_Percentage_of_Budget: @health14.Fund_Released_as_Percentage_of_Budget, Funds_Released_by_GOI: @health14.Funds_Released_by_GOI, Year: @health14.Year } }
    assert_redirected_to health14_url(@health14)
  end

  test "should destroy health14" do
    assert_difference('Health14.count', -1) do
      delete health14_url(@health14)
    end

    assert_redirected_to health14s_url
  end
end
