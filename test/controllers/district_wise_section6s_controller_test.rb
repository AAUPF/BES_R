require 'test_helper'

class DistrictWiseSection6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @district_wise_section6 = district_wise_section6s(:one)
  end

  test "should get index" do
    get district_wise_section6s_url
    assert_response :success
  end

  test "should get new" do
    get new_district_wise_section6_url
    assert_response :success
  end

  test "should create district_wise_section6" do
    assert_difference('DistrictWiseSection6.count') do
      post district_wise_section6s_url, params: { district_wise_section6: { Coverage_in_percentage: @district_wise_section6.Coverage_in_percentage, Districts: @district_wise_section6.Districts, Number_of_Children_Availing_MDM_per_day: @district_wise_section6.Number_of_Children_Availing_MDM_per_day, Total: @district_wise_section6.Total, Year: @district_wise_section6.Year, _Enrolment: @district_wise_section6._Enrolment } }
    end

    assert_redirected_to district_wise_section6_url(DistrictWiseSection6.last)
  end

  test "should show district_wise_section6" do
    get district_wise_section6_url(@district_wise_section6)
    assert_response :success
  end

  test "should get edit" do
    get edit_district_wise_section6_url(@district_wise_section6)
    assert_response :success
  end

  test "should update district_wise_section6" do
    patch district_wise_section6_url(@district_wise_section6), params: { district_wise_section6: { Coverage_in_percentage: @district_wise_section6.Coverage_in_percentage, Districts: @district_wise_section6.Districts, Number_of_Children_Availing_MDM_per_day: @district_wise_section6.Number_of_Children_Availing_MDM_per_day, Total: @district_wise_section6.Total, Year: @district_wise_section6.Year, _Enrolment: @district_wise_section6._Enrolment } }
    assert_redirected_to district_wise_section6_url(@district_wise_section6)
  end

  test "should destroy district_wise_section6" do
    assert_difference('DistrictWiseSection6.count', -1) do
      delete district_wise_section6_url(@district_wise_section6)
    end

    assert_redirected_to district_wise_section6s_url
  end
end
