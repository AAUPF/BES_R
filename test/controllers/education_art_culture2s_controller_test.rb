require 'test_helper'

class EducationArtCulture2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education_art_culture2 = education_art_culture2s(:one)
  end

  test "should get index" do
    get education_art_culture2s_url
    assert_response :success
  end

  test "should get new" do
    get new_education_art_culture2_url
    assert_response :success
  end

  test "should create education_art_culture2" do
    assert_difference('EducationArtCulture2.count') do
      post education_art_culture2s_url, params: { education_art_culture2: { 2011-12: @education_art_culture2.2011-12, 2012-13: @education_art_culture2.2012-13, 2013-14: @education_art_culture2.2013-14, 2014-15: @education_art_culture2.2014-15, 2015-16: @education_art_culture2.2015-16, CAGR: @education_art_culture2.CAGR, Indicator: @education_art_culture2.Indicator, Indicator1: @education_art_culture2.Indicator1, Sector: @education_art_culture2.Sector } }
    end

    assert_redirected_to education_art_culture2_url(EducationArtCulture2.last)
  end

  test "should show education_art_culture2" do
    get education_art_culture2_url(@education_art_culture2)
    assert_response :success
  end

  test "should get edit" do
    get edit_education_art_culture2_url(@education_art_culture2)
    assert_response :success
  end

  test "should update education_art_culture2" do
    patch education_art_culture2_url(@education_art_culture2), params: { education_art_culture2: { 2011-12: @education_art_culture2.2011-12, 2012-13: @education_art_culture2.2012-13, 2013-14: @education_art_culture2.2013-14, 2014-15: @education_art_culture2.2014-15, 2015-16: @education_art_culture2.2015-16, CAGR: @education_art_culture2.CAGR, Indicator: @education_art_culture2.Indicator, Indicator1: @education_art_culture2.Indicator1, Sector: @education_art_culture2.Sector } }
    assert_redirected_to education_art_culture2_url(@education_art_culture2)
  end

  test "should destroy education_art_culture2" do
    assert_difference('EducationArtCulture2.count', -1) do
      delete education_art_culture2_url(@education_art_culture2)
    end

    assert_redirected_to education_art_culture2s_url
  end
end
