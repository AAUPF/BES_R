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
      post animal_husbandry4s_url, params: { animal_husbandry4: { Buffalo: @animal_husbandry4.Buffalo, Buffalo_Colour: @animal_husbandry4.Buffalo_Colour, Cow: @animal_husbandry4.Cow, Cow_Colour: @animal_husbandry4.Cow_Colour, Districts: @animal_husbandry4.Districts, Goat: @animal_husbandry4.Goat, Goat_Colour: @animal_husbandry4.Goat_Colour, Pig: @animal_husbandry4.Pig, Pig_Colour: @animal_husbandry4.Pig_Colour, Poultry: @animal_husbandry4.Poultry, Poultry_Colour: @animal_husbandry4.Poultry_Colour, Sheep: @animal_husbandry4.Sheep, Sheep_Colour: @animal_husbandry4.Sheep_Colour } }
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
    patch animal_husbandry4_url(@animal_husbandry4), params: { animal_husbandry4: { Buffalo: @animal_husbandry4.Buffalo, Buffalo_Colour: @animal_husbandry4.Buffalo_Colour, Cow: @animal_husbandry4.Cow, Cow_Colour: @animal_husbandry4.Cow_Colour, Districts: @animal_husbandry4.Districts, Goat: @animal_husbandry4.Goat, Goat_Colour: @animal_husbandry4.Goat_Colour, Pig: @animal_husbandry4.Pig, Pig_Colour: @animal_husbandry4.Pig_Colour, Poultry: @animal_husbandry4.Poultry, Poultry_Colour: @animal_husbandry4.Poultry_Colour, Sheep: @animal_husbandry4.Sheep, Sheep_Colour: @animal_husbandry4.Sheep_Colour } }
    assert_redirected_to animal_husbandry4_url(@animal_husbandry4)
  end

  test "should destroy animal_husbandry4" do
    assert_difference('AnimalHusbandry4.count', -1) do
      delete animal_husbandry4_url(@animal_husbandry4)
    end

    assert_redirected_to animal_husbandry4s_url
  end
end
