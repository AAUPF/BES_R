require 'test_helper'

class EducationArtCulture4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education_art_culture4 = education_art_culture4s(:one)
  end

  test "should get index" do
    get education_art_culture4s_url
    assert_response :success
  end

  test "should get new" do
    get new_education_art_culture4_url
    assert_response :success
  end

  test "should create education_art_culture4" do
    assert_difference('EducationArtCulture4.count') do
      post education_art_culture4s_url, params: { education_art_culture4: { Boys: @education_art_culture4.Boys, Combined: @education_art_culture4.Combined, Girls: @education_art_culture4.Girls, Indicator: @education_art_culture4.Indicator, Indicator1: @education_art_culture4.Indicator1, Year: @education_art_culture4.Year } }
    end

    assert_redirected_to education_art_culture4_url(EducationArtCulture4.last)
  end

  test "should show education_art_culture4" do
    get education_art_culture4_url(@education_art_culture4)
    assert_response :success
  end

  test "should get edit" do
    get edit_education_art_culture4_url(@education_art_culture4)
    assert_response :success
  end

  test "should update education_art_culture4" do
    patch education_art_culture4_url(@education_art_culture4), params: { education_art_culture4: { Boys: @education_art_culture4.Boys, Combined: @education_art_culture4.Combined, Girls: @education_art_culture4.Girls, Indicator: @education_art_culture4.Indicator, Indicator1: @education_art_culture4.Indicator1, Year: @education_art_culture4.Year } }
    assert_redirected_to education_art_culture4_url(@education_art_culture4)
  end

  test "should destroy education_art_culture4" do
    assert_difference('EducationArtCulture4.count', -1) do
      delete education_art_culture4_url(@education_art_culture4)
    end

    assert_redirected_to education_art_culture4s_url
  end
end
