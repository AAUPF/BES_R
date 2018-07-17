require 'test_helper'

class AnimalHusbandry3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_husbandry3 = animal_husbandry3s(:one)
  end

  test "should get index" do
    get animal_husbandry3s_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_husbandry3_url
    assert_response :success
  end

  test "should create animal_husbandry3" do
    assert_difference('AnimalHusbandry3.count') do
      post animal_husbandry3s_url, params: { animal_husbandry3: { Animals_Treated_in_Lakh: @animal_husbandry3.Animals_Treated_in_Lakh, Artificial_Insemination_in_Lakh: @animal_husbandry3.Artificial_Insemination_in_Lakh, Immunization_in_Lakh: @animal_husbandry3.Immunization_in_Lakh, Year: @animal_husbandry3.Year } }
    end

    assert_redirected_to animal_husbandry3_url(AnimalHusbandry3.last)
  end

  test "should show animal_husbandry3" do
    get animal_husbandry3_url(@animal_husbandry3)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_husbandry3_url(@animal_husbandry3)
    assert_response :success
  end

  test "should update animal_husbandry3" do
    patch animal_husbandry3_url(@animal_husbandry3), params: { animal_husbandry3: { Animals_Treated_in_Lakh: @animal_husbandry3.Animals_Treated_in_Lakh, Artificial_Insemination_in_Lakh: @animal_husbandry3.Artificial_Insemination_in_Lakh, Immunization_in_Lakh: @animal_husbandry3.Immunization_in_Lakh, Year: @animal_husbandry3.Year } }
    assert_redirected_to animal_husbandry3_url(@animal_husbandry3)
  end

  test "should destroy animal_husbandry3" do
    assert_difference('AnimalHusbandry3.count', -1) do
      delete animal_husbandry3_url(@animal_husbandry3)
    end

    assert_redirected_to animal_husbandry3s_url
  end
end
