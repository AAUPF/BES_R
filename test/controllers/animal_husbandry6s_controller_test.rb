require 'test_helper'

class AnimalHusbandry6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_husbandry6 = animal_husbandry6s(:one)
  end

  test "should get index" do
    get animal_husbandry6s_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_husbandry6_url
    assert_response :success
  end

  test "should create animal_husbandry6" do
    assert_difference('AnimalHusbandry6.count') do
      post animal_husbandry6s_url, params: { animal_husbandry6: { Buffalo: @animal_husbandry6.Buffalo, Crossbred_Cow: @animal_husbandry6.Crossbred_Cow, Districts: @animal_husbandry6.Districts, Goat: @animal_husbandry6.Goat, Local_Cow: @animal_husbandry6.Local_Cow, Percentage_Buffalo: @animal_husbandry6.Percentage_Buffalo, Percentage_Crossbred_Cow: @animal_husbandry6.Percentage_Crossbred_Cow, Percentage_Goat: @animal_husbandry6.Percentage_Goat, Percentage_Local_Cow: @animal_husbandry6.Percentage_Local_Cow, Percentage_Total_Cow: @animal_husbandry6.Percentage_Total_Cow, Percentage_Total_Cow_Buffalo: @animal_husbandry6.Percentage_Total_Cow_Buffalo, Percentage_Total_Production: @animal_husbandry6.Percentage_Total_Production, Total_Cow: @animal_husbandry6.Total_Cow, Total_Cow_Buffalo: @animal_husbandry6.Total_Cow_Buffalo, Total_Production: @animal_husbandry6.Total_Production, Year: @animal_husbandry6.Year } }
    end

    assert_redirected_to animal_husbandry6_url(AnimalHusbandry6.last)
  end

  test "should show animal_husbandry6" do
    get animal_husbandry6_url(@animal_husbandry6)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_husbandry6_url(@animal_husbandry6)
    assert_response :success
  end

  test "should update animal_husbandry6" do
    patch animal_husbandry6_url(@animal_husbandry6), params: { animal_husbandry6: { Buffalo: @animal_husbandry6.Buffalo, Crossbred_Cow: @animal_husbandry6.Crossbred_Cow, Districts: @animal_husbandry6.Districts, Goat: @animal_husbandry6.Goat, Local_Cow: @animal_husbandry6.Local_Cow, Percentage_Buffalo: @animal_husbandry6.Percentage_Buffalo, Percentage_Crossbred_Cow: @animal_husbandry6.Percentage_Crossbred_Cow, Percentage_Goat: @animal_husbandry6.Percentage_Goat, Percentage_Local_Cow: @animal_husbandry6.Percentage_Local_Cow, Percentage_Total_Cow: @animal_husbandry6.Percentage_Total_Cow, Percentage_Total_Cow_Buffalo: @animal_husbandry6.Percentage_Total_Cow_Buffalo, Percentage_Total_Production: @animal_husbandry6.Percentage_Total_Production, Total_Cow: @animal_husbandry6.Total_Cow, Total_Cow_Buffalo: @animal_husbandry6.Total_Cow_Buffalo, Total_Production: @animal_husbandry6.Total_Production, Year: @animal_husbandry6.Year } }
    assert_redirected_to animal_husbandry6_url(@animal_husbandry6)
  end

  test "should destroy animal_husbandry6" do
    assert_difference('AnimalHusbandry6.count', -1) do
      delete animal_husbandry6_url(@animal_husbandry6)
    end

    assert_redirected_to animal_husbandry6s_url
  end
end
