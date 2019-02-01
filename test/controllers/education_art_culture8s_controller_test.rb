require 'test_helper'

class EducationArtCulture8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education_art_culture8 = education_art_culture8s(:one)
  end

  test "should get index" do
    get education_art_culture8s_url
    assert_response :success
  end

  test "should get new" do
    get new_education_art_culture8_url
    assert_response :success
  end

  test "should create education_art_culture8" do
    assert_difference('EducationArtCulture8.count') do
      post education_art_culture8s_url, params: { education_art_culture8: { Indiactor: @education_art_culture8.Indiactor, Reading_Std._II_Level_Textn_in_Bihar: @education_art_culture8.Reading_Std._II_Level_Textn_in_Bihar, Reading_Std._II_Level_Textn_in_India: @education_art_culture8.Reading_Std._II_Level_Textn_in_India, Simple_Subtraction_Bihar: @education_art_culture8.Simple_Subtraction_Bihar, Simple_Subtraction_India: @education_art_culture8.Simple_Subtraction_India, Type_of_School: @education_art_culture8.Type_of_School, Year: @education_art_culture8.Year } }
    end

    assert_redirected_to education_art_culture8_url(EducationArtCulture8.last)
  end

  test "should show education_art_culture8" do
    get education_art_culture8_url(@education_art_culture8)
    assert_response :success
  end

  test "should get edit" do
    get edit_education_art_culture8_url(@education_art_culture8)
    assert_response :success
  end

  test "should update education_art_culture8" do
    patch education_art_culture8_url(@education_art_culture8), params: { education_art_culture8: { Indiactor: @education_art_culture8.Indiactor, Reading_Std._II_Level_Textn_in_Bihar: @education_art_culture8.Reading_Std._II_Level_Textn_in_Bihar, Reading_Std._II_Level_Textn_in_India: @education_art_culture8.Reading_Std._II_Level_Textn_in_India, Simple_Subtraction_Bihar: @education_art_culture8.Simple_Subtraction_Bihar, Simple_Subtraction_India: @education_art_culture8.Simple_Subtraction_India, Type_of_School: @education_art_culture8.Type_of_School, Year: @education_art_culture8.Year } }
    assert_redirected_to education_art_culture8_url(@education_art_culture8)
  end

  test "should destroy education_art_culture8" do
    assert_difference('EducationArtCulture8.count', -1) do
      delete education_art_culture8_url(@education_art_culture8)
    end

    assert_redirected_to education_art_culture8s_url
  end
end
