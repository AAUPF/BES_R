require 'test_helper'

class EducationArtCulture5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education_art_culture5 = education_art_culture5s(:one)
  end

  test "should get index" do
    get education_art_culture5s_url
    assert_response :success
  end

  test "should get new" do
    get new_education_art_culture5_url
    assert_response :success
  end

  test "should create education_art_culture5" do
    assert_difference('EducationArtCulture5.count') do
      post education_art_culture5s_url, params: { education_art_culture5: { Higher: @education_art_culture5.Higher, Primary: @education_art_culture5.Primary, Secondary: @education_art_culture5.Secondary, Social_Services: @education_art_culture5.Social_Services, Total: @education_art_culture5.Total, Total_Budget: @education_art_culture5.Total_Budget, Year: @education_art_culture5.Year } }
    end

    assert_redirected_to education_art_culture5_url(EducationArtCulture5.last)
  end

  test "should show education_art_culture5" do
    get education_art_culture5_url(@education_art_culture5)
    assert_response :success
  end

  test "should get edit" do
    get edit_education_art_culture5_url(@education_art_culture5)
    assert_response :success
  end

  test "should update education_art_culture5" do
    patch education_art_culture5_url(@education_art_culture5), params: { education_art_culture5: { Higher: @education_art_culture5.Higher, Primary: @education_art_culture5.Primary, Secondary: @education_art_culture5.Secondary, Social_Services: @education_art_culture5.Social_Services, Total: @education_art_culture5.Total, Total_Budget: @education_art_culture5.Total_Budget, Year: @education_art_culture5.Year } }
    assert_redirected_to education_art_culture5_url(@education_art_culture5)
  end

  test "should destroy education_art_culture5" do
    assert_difference('EducationArtCulture5.count', -1) do
      delete education_art_culture5_url(@education_art_culture5)
    end

    assert_redirected_to education_art_culture5s_url
  end
end
