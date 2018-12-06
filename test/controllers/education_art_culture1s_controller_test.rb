require 'test_helper'

class EducationArtCulture1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education_art_culture1 = education_art_culture1s(:one)
  end

  test "should get index" do
    get education_art_culture1s_url
    assert_response :success
  end

  test "should get new" do
    get new_education_art_culture1_url
    assert_response :success
  end

  test "should create education_art_culture1" do
    assert_difference('EducationArtCulture1.count') do
      post education_art_culture1s_url, params: { education_art_culture1: { Female: @education_art_culture1.Female, Indicator: @education_art_culture1.Indicator, Indicator1: @education_art_culture1.Indicator1, Male: @education_art_culture1.Male, Persons: @education_art_culture1.Persons, Year: @education_art_culture1.Year } }
    end

    assert_redirected_to education_art_culture1_url(EducationArtCulture1.last)
  end

  test "should show education_art_culture1" do
    get education_art_culture1_url(@education_art_culture1)
    assert_response :success
  end

  test "should get edit" do
    get edit_education_art_culture1_url(@education_art_culture1)
    assert_response :success
  end

  test "should update education_art_culture1" do
    patch education_art_culture1_url(@education_art_culture1), params: { education_art_culture1: { Female: @education_art_culture1.Female, Indicator: @education_art_culture1.Indicator, Indicator1: @education_art_culture1.Indicator1, Male: @education_art_culture1.Male, Persons: @education_art_culture1.Persons, Year: @education_art_culture1.Year } }
    assert_redirected_to education_art_culture1_url(@education_art_culture1)
  end

  test "should destroy education_art_culture1" do
    assert_difference('EducationArtCulture1.count', -1) do
      delete education_art_culture1_url(@education_art_culture1)
    end

    assert_redirected_to education_art_culture1s_url
  end
end
