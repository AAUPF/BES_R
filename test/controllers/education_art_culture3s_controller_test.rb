require 'test_helper'

class EducationArtCulture3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education_art_culture3 = education_art_culture3s(:one)
  end

  test "should get index" do
    get education_art_culture3s_url
    assert_response :success
  end

  test "should get new" do
    get new_education_art_culture3_url
    assert_response :success
  end

  test "should create education_art_culture3" do
    assert_difference('EducationArtCulture3.count') do
      post education_art_culture3s_url, params: { education_art_culture3: { 2011-12: @education_art_culture3.2011-12, 2012-13: @education_art_culture3.2012-13, 2013-14: @education_art_culture3.2013-14, 2014-15: @education_art_culture3.2014-15, 2015-16: @education_art_culture3.2015-16, Indicator: @education_art_culture3.Indicator, Sector: @education_art_culture3.Sector } }
    end

    assert_redirected_to education_art_culture3_url(EducationArtCulture3.last)
  end

  test "should show education_art_culture3" do
    get education_art_culture3_url(@education_art_culture3)
    assert_response :success
  end

  test "should get edit" do
    get edit_education_art_culture3_url(@education_art_culture3)
    assert_response :success
  end

  test "should update education_art_culture3" do
    patch education_art_culture3_url(@education_art_culture3), params: { education_art_culture3: { 2011-12: @education_art_culture3.2011-12, 2012-13: @education_art_culture3.2012-13, 2013-14: @education_art_culture3.2013-14, 2014-15: @education_art_culture3.2014-15, 2015-16: @education_art_culture3.2015-16, Indicator: @education_art_culture3.Indicator, Sector: @education_art_culture3.Sector } }
    assert_redirected_to education_art_culture3_url(@education_art_culture3)
  end

  test "should destroy education_art_culture3" do
    assert_difference('EducationArtCulture3.count', -1) do
      delete education_art_culture3_url(@education_art_culture3)
    end

    assert_redirected_to education_art_culture3s_url
  end
end
