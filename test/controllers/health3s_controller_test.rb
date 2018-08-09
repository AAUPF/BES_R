require 'test_helper'

class Health3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health3 = health3s(:one)
  end

  test "should get index" do
    get health3s_url
    assert_response :success
  end

  test "should get new" do
    get new_health3_url
    assert_response :success
  end

  test "should create health3" do
    assert_difference('Health3.count') do
      post health3s_url, params: { health3: { Area: @health3.Area, Child_Mortality_Rate: @health3.Child_Mortality_Rate, Crude_Birth_Rate: @health3.Crude_Birth_Rate, Infant_Mortality_Rate: @health3.Infant_Mortality_Rate, Neo_Natal_Mortality_Rate: @health3.Neo_Natal_Mortality_Rate, Region: @health3.Region, Total_Fertility_Rate: @health3.Total_Fertility_Rate, Total_Marital_Fertility_Rate: @health3.Total_Marital_Fertility_Rate, Under_Five_Mortality_Rate: @health3.Under_Five_Mortality_Rate, Year: @health3.Year } }
    end

    assert_redirected_to health3_url(Health3.last)
  end

  test "should show health3" do
    get health3_url(@health3)
    assert_response :success
  end

  test "should get edit" do
    get edit_health3_url(@health3)
    assert_response :success
  end

  test "should update health3" do
    patch health3_url(@health3), params: { health3: { Area: @health3.Area, Child_Mortality_Rate: @health3.Child_Mortality_Rate, Crude_Birth_Rate: @health3.Crude_Birth_Rate, Infant_Mortality_Rate: @health3.Infant_Mortality_Rate, Neo_Natal_Mortality_Rate: @health3.Neo_Natal_Mortality_Rate, Region: @health3.Region, Total_Fertility_Rate: @health3.Total_Fertility_Rate, Total_Marital_Fertility_Rate: @health3.Total_Marital_Fertility_Rate, Under_Five_Mortality_Rate: @health3.Under_Five_Mortality_Rate, Year: @health3.Year } }
    assert_redirected_to health3_url(@health3)
  end

  test "should destroy health3" do
    assert_difference('Health3.count', -1) do
      delete health3_url(@health3)
    end

    assert_redirected_to health3s_url
  end
end
