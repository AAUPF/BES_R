require 'test_helper'

class AnimalHusbandry4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_husbandry4 = animal_husbandry4s(:one)
  end

  test "should get index" do
    get animal_husbandry4s_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_husbandry4_url
    assert_response :success
  end

  test "should create animal_husbandry4" do
    assert_difference('AnimalHusbandry4.count') do
      post animal_husbandry4s_url, params: { animal_husbandry4: { Buffalo: @animal_husbandry4.Buffalo, Cow: @animal_husbandry4.Cow, Districts: @animal_husbandry4.Districts, Goat: @animal_husbandry4.Goat, Percentage_Buffalo: @animal_husbandry4.Percentage_Buffalo, Percentage_Cow: @animal_husbandry4.Percentage_Cow, Percentage_Goat: @animal_husbandry4.Percentage_Goat, Percentage_Pig: @animal_husbandry4.Percentage_Pig, Percentage_Poultry: @animal_husbandry4.Percentage_Poultry, Percentage_Sheep: @animal_husbandry4.Percentage_Sheep, Pig: @animal_husbandry4.Pig, Poultry: @animal_husbandry4.Poultry, Sheep: @animal_husbandry4.Sheep } }
    end

    assert_redirected_to animal_husbandry4_url(AnimalHusbandry4.last)
  end

  test "should show animal_husbandry4" do
    get animal_husbandry4_url(@animal_husbandry4)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_husbandry4_url(@animal_husbandry4)
    assert_response :success
  end

  test "should update animal_husbandry4" do
    patch animal_husbandry4_url(@animal_husbandry4), params: { animal_husbandry4: { Buffalo: @animal_husbandry4.Buffalo, Cow: @animal_husbandry4.Cow, Districts: @animal_husbandry4.Districts, Goat: @animal_husbandry4.Goat, Percentage_Buffalo: @animal_husbandry4.Percentage_Buffalo, Percentage_Cow: @animal_husbandry4.Percentage_Cow, Percentage_Goat: @animal_husbandry4.Percentage_Goat, Percentage_Pig: @animal_husbandry4.Percentage_Pig, Percentage_Poultry: @animal_husbandry4.Percentage_Poultry, Percentage_Sheep: @animal_husbandry4.Percentage_Sheep, Pig: @animal_husbandry4.Pig, Poultry: @animal_husbandry4.Poultry, Sheep: @animal_husbandry4.Sheep } }
    assert_redirected_to animal_husbandry4_url(@animal_husbandry4)
  end

  test "should destroy animal_husbandry4" do
    assert_difference('AnimalHusbandry4.count', -1) do
      delete animal_husbandry4_url(@animal_husbandry4)
    end

    assert_redirected_to animal_husbandry4s_url
  end
end
