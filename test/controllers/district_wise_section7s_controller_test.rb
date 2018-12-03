require 'test_helper'

class DistrictWiseSection7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @district_wise_section7 = district_wise_section7s(:one)
  end

  test "should get index" do
    get district_wise_section7s_url
    assert_response :success
  end

  test "should get new" do
    get new_district_wise_section7_url
    assert_response :success
  end

  test "should create district_wise_section7" do
    assert_difference('DistrictWiseSection7.count') do
      post district_wise_section7s_url, params: { district_wise_section7: { Coverage_in_percentage: @district_wise_section7.Coverage_in_percentage, Districts: @district_wise_section7.Districts, Number_of_Children_Availing_MDM_per_day: @district_wise_section7.Number_of_Children_Availing_MDM_per_day, Total_Enrolment: @district_wise_section7.Total_Enrolment, Year: @district_wise_section7.Year } }
    end

    assert_redirected_to district_wise_section7_url(DistrictWiseSection7.last)
  end

  test "should show district_wise_section7" do
    get district_wise_section7_url(@district_wise_section7)
    assert_response :success
  end

  test "should get edit" do
    get edit_district_wise_section7_url(@district_wise_section7)
    assert_response :success
  end

  test "should update district_wise_section7" do
    patch district_wise_section7_url(@district_wise_section7), params: { district_wise_section7: { Coverage_in_percentage: @district_wise_section7.Coverage_in_percentage, Districts: @district_wise_section7.Districts, Number_of_Children_Availing_MDM_per_day: @district_wise_section7.Number_of_Children_Availing_MDM_per_day, Total_Enrolment: @district_wise_section7.Total_Enrolment, Year: @district_wise_section7.Year } }
    assert_redirected_to district_wise_section7_url(@district_wise_section7)
  end

  test "should destroy district_wise_section7" do
    assert_difference('DistrictWiseSection7.count', -1) do
      delete district_wise_section7_url(@district_wise_section7)
    end

    assert_redirected_to district_wise_section7s_url
  end
end
