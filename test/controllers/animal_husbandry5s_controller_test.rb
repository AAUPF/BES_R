require 'test_helper'

class AnimalHusbandry5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_husbandry5 = animal_husbandry5s(:one)
  end

  test "should get index" do
    get animal_husbandry5s_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_husbandry5_url
    assert_response :success
  end

  test "should create animal_husbandry5" do
    assert_difference('AnimalHusbandry5.count') do
      post animal_husbandry5s_url, params: { animal_husbandry5: { Districts: @animal_husbandry5.Districts, Fish_Production: @animal_husbandry5.Fish_Production, Fish_Seeds: @animal_husbandry5.Fish_Seeds, Year: @animal_husbandry5.Year } }
    end

    assert_redirected_to animal_husbandry5_url(AnimalHusbandry5.last)
  end

  test "should show animal_husbandry5" do
    get animal_husbandry5_url(@animal_husbandry5)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_husbandry5_url(@animal_husbandry5)
    assert_response :success
  end

  test "should update animal_husbandry5" do
    patch animal_husbandry5_url(@animal_husbandry5), params: { animal_husbandry5: { Districts: @animal_husbandry5.Districts, Fish_Production: @animal_husbandry5.Fish_Production, Fish_Seeds: @animal_husbandry5.Fish_Seeds, Year: @animal_husbandry5.Year } }
    assert_redirected_to animal_husbandry5_url(@animal_husbandry5)
  end

  test "should destroy animal_husbandry5" do
    assert_difference('AnimalHusbandry5.count', -1) do
      delete animal_husbandry5_url(@animal_husbandry5)
    end

    assert_redirected_to animal_husbandry5s_url
  end
end
