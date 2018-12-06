require 'test_helper'

class EducationArtCulture9sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education_art_culture9 = education_art_culture9s(:one)
  end

  test "should get index" do
    get education_art_culture9s_url
    assert_response :success
  end

  test "should get new" do
    get new_education_art_culture9_url
    assert_response :success
  end

  test "should create education_art_culture9" do
    assert_difference('EducationArtCulture9.count') do
      post education_art_culture9s_url, params: { education_art_culture9: { 2013: @education_art_culture9.2013, 2014: @education_art_culture9.2014, 2015: @education_art_culture9.2015, 2016: @education_art_culture9.2016, Indicator: @education_art_culture9.Indicator, Type_of_Institutions: @education_art_culture9.Type_of_Institutions } }
    end

    assert_redirected_to education_art_culture9_url(EducationArtCulture9.last)
  end

  test "should show education_art_culture9" do
    get education_art_culture9_url(@education_art_culture9)
    assert_response :success
  end

  test "should get edit" do
    get edit_education_art_culture9_url(@education_art_culture9)
    assert_response :success
  end

  test "should update education_art_culture9" do
    patch education_art_culture9_url(@education_art_culture9), params: { education_art_culture9: { 2013: @education_art_culture9.2013, 2014: @education_art_culture9.2014, 2015: @education_art_culture9.2015, 2016: @education_art_culture9.2016, Indicator: @education_art_culture9.Indicator, Type_of_Institutions: @education_art_culture9.Type_of_Institutions } }
    assert_redirected_to education_art_culture9_url(@education_art_culture9)
  end

  test "should destroy education_art_culture9" do
    assert_difference('EducationArtCulture9.count', -1) do
      delete education_art_culture9_url(@education_art_culture9)
    end

    assert_redirected_to education_art_culture9s_url
  end
end
