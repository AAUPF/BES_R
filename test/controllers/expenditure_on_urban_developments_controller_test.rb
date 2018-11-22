require 'test_helper'

class ExpenditureOnUrbanDevelopmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expenditure_on_urban_development = expenditure_on_urban_developments(:one)
  end

  test "should get index" do
    get expenditure_on_urban_developments_url
    assert_response :success
  end

  test "should get new" do
    get new_expenditure_on_urban_development_url
    assert_response :success
  end

  test "should create expenditure_on_urban_development" do
    assert_difference('ExpenditureOnUrbanDevelopment.count') do
      post expenditure_on_urban_developments_url, params: { expenditure_on_urban_development: { Housing: @expenditure_on_urban_development.Housing, Indicator: @expenditure_on_urban_development.Indicator, Total: @expenditure_on_urban_development.Total, Urban_Development: @expenditure_on_urban_development.Urban_Development, Year: @expenditure_on_urban_development.Year } }
    end

    assert_redirected_to expenditure_on_urban_development_url(ExpenditureOnUrbanDevelopment.last)
  end

  test "should show expenditure_on_urban_development" do
    get expenditure_on_urban_development_url(@expenditure_on_urban_development)
    assert_response :success
  end

  test "should get edit" do
    get edit_expenditure_on_urban_development_url(@expenditure_on_urban_development)
    assert_response :success
  end

  test "should update expenditure_on_urban_development" do
    patch expenditure_on_urban_development_url(@expenditure_on_urban_development), params: { expenditure_on_urban_development: { Housing: @expenditure_on_urban_development.Housing, Indicator: @expenditure_on_urban_development.Indicator, Total: @expenditure_on_urban_development.Total, Urban_Development: @expenditure_on_urban_development.Urban_Development, Year: @expenditure_on_urban_development.Year } }
    assert_redirected_to expenditure_on_urban_development_url(@expenditure_on_urban_development)
  end

  test "should destroy expenditure_on_urban_development" do
    assert_difference('ExpenditureOnUrbanDevelopment.count', -1) do
      delete expenditure_on_urban_development_url(@expenditure_on_urban_development)
    end

    assert_redirected_to expenditure_on_urban_developments_url
  end
end
