require 'test_helper'

class AnimalHusbandry1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_husbandry1 = animal_husbandry1s(:one)
  end

  test "should get index" do
    get animal_husbandry1s_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_husbandry1_url
    assert_response :success
  end

  test "should create animal_husbandry1" do
    assert_difference('AnimalHusbandry1.count') do
      post animal_husbandry1s_url, params: { animal_husbandry1: { Buffalo: @animal_husbandry1.Buffalo, Cattle: @animal_husbandry1.Cattle, Females_over_3_years: @animal_husbandry1.Females_over_3_years, Goats: @animal_husbandry1.Goats, Horses_Ponies: @animal_husbandry1.Horses_Ponies, Males_over_3_years: @animal_husbandry1.Males_over_3_years, Others: @animal_husbandry1.Others, Pigs: @animal_husbandry1.Pigs, Sheep: @animal_husbandry1.Sheep, Total_Livestock: @animal_husbandry1.Total_Livestock, Total_Poultry: @animal_husbandry1.Total_Poultry, Year: @animal_husbandry1.Year, Young_stock: @animal_husbandry1.Young_stock } }
    end

    assert_redirected_to animal_husbandry1_url(AnimalHusbandry1.last)
  end

  test "should show animal_husbandry1" do
    get animal_husbandry1_url(@animal_husbandry1)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_husbandry1_url(@animal_husbandry1)
    assert_response :success
  end

  test "should update animal_husbandry1" do
    patch animal_husbandry1_url(@animal_husbandry1), params: { animal_husbandry1: { Buffalo: @animal_husbandry1.Buffalo, Cattle: @animal_husbandry1.Cattle, Females_over_3_years: @animal_husbandry1.Females_over_3_years, Goats: @animal_husbandry1.Goats, Horses_Ponies: @animal_husbandry1.Horses_Ponies, Males_over_3_years: @animal_husbandry1.Males_over_3_years, Others: @animal_husbandry1.Others, Pigs: @animal_husbandry1.Pigs, Sheep: @animal_husbandry1.Sheep, Total_Livestock: @animal_husbandry1.Total_Livestock, Total_Poultry: @animal_husbandry1.Total_Poultry, Year: @animal_husbandry1.Year, Young_stock: @animal_husbandry1.Young_stock } }
    assert_redirected_to animal_husbandry1_url(@animal_husbandry1)
  end

  test "should destroy animal_husbandry1" do
    assert_difference('AnimalHusbandry1.count', -1) do
      delete animal_husbandry1_url(@animal_husbandry1)
    end

    assert_redirected_to animal_husbandry1s_url
  end
end
