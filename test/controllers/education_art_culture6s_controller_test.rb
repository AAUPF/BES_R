require 'test_helper'

class EducationArtCulture6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education_art_culture6 = education_art_culture6s(:one)
  end

  test "should get index" do
    get education_art_culture6s_url
    assert_response :success
  end

  test "should get new" do
    get new_education_art_culture6_url
    assert_response :success
  end

  test "should create education_art_culture6" do
    assert_difference('EducationArtCulture6.count') do
      post education_art_culture6s_url, params: { education_art_culture6: { 2012-13: @education_art_culture6.2012-13, 2013-14: @education_art_culture6.2013-14, 2014-15: @education_art_culture6.2014-15, 2015-16: @education_art_culture6.2015-16, CAGR: @education_art_culture6.CAGR, Indicator: @education_art_culture6.Indicator, Sector: @education_art_culture6.Sector } }
    end

    assert_redirected_to education_art_culture6_url(EducationArtCulture6.last)
  end

  test "should show education_art_culture6" do
    get education_art_culture6_url(@education_art_culture6)
    assert_response :success
  end

  test "should get edit" do
    get edit_education_art_culture6_url(@education_art_culture6)
    assert_response :success
  end

  test "should update education_art_culture6" do
    patch education_art_culture6_url(@education_art_culture6), params: { education_art_culture6: { 2012-13: @education_art_culture6.2012-13, 2013-14: @education_art_culture6.2013-14, 2014-15: @education_art_culture6.2014-15, 2015-16: @education_art_culture6.2015-16, CAGR: @education_art_culture6.CAGR, Indicator: @education_art_culture6.Indicator, Sector: @education_art_culture6.Sector } }
    assert_redirected_to education_art_culture6_url(@education_art_culture6)
  end

  test "should destroy education_art_culture6" do
    assert_difference('EducationArtCulture6.count', -1) do
      delete education_art_culture6_url(@education_art_culture6)
    end

    assert_redirected_to education_art_culture6s_url
  end
end
