require 'test_helper'

class EducationArtCulture7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education_art_culture7 = education_art_culture7s(:one)
  end

  test "should get index" do
    get education_art_culture7s_url
    assert_response :success
  end

  test "should get new" do
    get new_education_art_culture7_url
    assert_response :success
  end

  test "should create education_art_culture7" do
    assert_difference('EducationArtCulture7.count') do
      post education_art_culture7s_url, params: { education_art_culture7: { APPROVED_AWP_and_B: @education_art_culture7.APPROVED_AWP_and_B, Expenditure_as_Percentage_of_AWP_and_B: @education_art_culture7.Expenditure_as_Percentage_of_AWP_and_B, Fund_Released_by_GOB: @education_art_culture7.Fund_Released_by_GOB, Fund_Released_by_GOI: @education_art_culture7.Fund_Released_by_GOI, Programmes: @education_art_culture7.Programmes, Total_Expenditure: @education_art_culture7.Total_Expenditure, Total_Fund_Released: @education_art_culture7.Total_Fund_Released, Year: @education_art_culture7.Year } }
    end

    assert_redirected_to education_art_culture7_url(EducationArtCulture7.last)
  end

  test "should show education_art_culture7" do
    get education_art_culture7_url(@education_art_culture7)
    assert_response :success
  end

  test "should get edit" do
    get edit_education_art_culture7_url(@education_art_culture7)
    assert_response :success
  end

  test "should update education_art_culture7" do
    patch education_art_culture7_url(@education_art_culture7), params: { education_art_culture7: { APPROVED_AWP_and_B: @education_art_culture7.APPROVED_AWP_and_B, Expenditure_as_Percentage_of_AWP_and_B: @education_art_culture7.Expenditure_as_Percentage_of_AWP_and_B, Fund_Released_by_GOB: @education_art_culture7.Fund_Released_by_GOB, Fund_Released_by_GOI: @education_art_culture7.Fund_Released_by_GOI, Programmes: @education_art_culture7.Programmes, Total_Expenditure: @education_art_culture7.Total_Expenditure, Total_Fund_Released: @education_art_culture7.Total_Fund_Released, Year: @education_art_culture7.Year } }
    assert_redirected_to education_art_culture7_url(@education_art_culture7)
  end

  test "should destroy education_art_culture7" do
    assert_difference('EducationArtCulture7.count', -1) do
      delete education_art_culture7_url(@education_art_culture7)
    end

    assert_redirected_to education_art_culture7s_url
  end
end
