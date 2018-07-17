require 'test_helper'

class AnimalHusbandry2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_husbandry2 = animal_husbandry2s(:one)
  end

  test "should get index" do
    get animal_husbandry2s_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_husbandry2_url
    assert_response :success
  end

  test "should create animal_husbandry2" do
    assert_difference('AnimalHusbandry2.count') do
      post animal_husbandry2s_url, params: { animal_husbandry2: { Egg_crore: @animal_husbandry2.Egg_crore, Fish_lakh_tonnes: @animal_husbandry2.Fish_lakh_tonnes, Meat_lakh_tonnes: @animal_husbandry2.Meat_lakh_tonnes, Milk_lakh_tonnes: @animal_husbandry2.Milk_lakh_tonnes, Wool_lakh_kgs: @animal_husbandry2.Wool_lakh_kgs, Year: @animal_husbandry2.Year } }
    end

    assert_redirected_to animal_husbandry2_url(AnimalHusbandry2.last)
  end

  test "should show animal_husbandry2" do
    get animal_husbandry2_url(@animal_husbandry2)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_husbandry2_url(@animal_husbandry2)
    assert_response :success
  end

  test "should update animal_husbandry2" do
    patch animal_husbandry2_url(@animal_husbandry2), params: { animal_husbandry2: { Egg_crore: @animal_husbandry2.Egg_crore, Fish_lakh_tonnes: @animal_husbandry2.Fish_lakh_tonnes, Meat_lakh_tonnes: @animal_husbandry2.Meat_lakh_tonnes, Milk_lakh_tonnes: @animal_husbandry2.Milk_lakh_tonnes, Wool_lakh_kgs: @animal_husbandry2.Wool_lakh_kgs, Year: @animal_husbandry2.Year } }
    assert_redirected_to animal_husbandry2_url(@animal_husbandry2)
  end

  test "should destroy animal_husbandry2" do
    assert_difference('AnimalHusbandry2.count', -1) do
      delete animal_husbandry2_url(@animal_husbandry2)
    end

    assert_redirected_to animal_husbandry2s_url
  end
end
