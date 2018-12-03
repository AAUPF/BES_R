require 'test_helper'

class DistrictWiseSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @district_wise_section = district_wise_sections(:one)
  end

  test "should get index" do
    get district_wise_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_district_wise_section_url
    assert_response :success
  end

  test "should create district_wise_section" do
    assert_difference('DistrictWiseSection.count') do
      post district_wise_sections_url, params: { district_wise_section: { Districts: @district_wise_section.Districts, Number_of_Handpumps_Installed: @district_wise_section.Number_of_Handpumps_Installed, Slipped_back_Habitations_or_Water_quality_Problems_Covered: @district_wise_section.Slipped_back_Habitations_or_Water_quality_Problems_Covered, Year: @district_wise_section.Year } }
    end

    assert_redirected_to district_wise_section_url(DistrictWiseSection.last)
  end

  test "should show district_wise_section" do
    get district_wise_section_url(@district_wise_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_district_wise_section_url(@district_wise_section)
    assert_response :success
  end

  test "should update district_wise_section" do
    patch district_wise_section_url(@district_wise_section), params: { district_wise_section: { Districts: @district_wise_section.Districts, Number_of_Handpumps_Installed: @district_wise_section.Number_of_Handpumps_Installed, Slipped_back_Habitations_or_Water_quality_Problems_Covered: @district_wise_section.Slipped_back_Habitations_or_Water_quality_Problems_Covered, Year: @district_wise_section.Year } }
    assert_redirected_to district_wise_section_url(@district_wise_section)
  end

  test "should destroy district_wise_section" do
    assert_difference('DistrictWiseSection.count', -1) do
      delete district_wise_section_url(@district_wise_section)
    end

    assert_redirected_to district_wise_sections_url
  end
end
