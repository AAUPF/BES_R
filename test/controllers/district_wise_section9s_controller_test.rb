require 'test_helper'

class DistrictWiseSection9sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @district_wise_section9 = district_wise_section9s(:one)
  end

  test "should get index" do
    get district_wise_section9s_url
    assert_response :success
  end

  test "should get new" do
    get new_district_wise_section9_url
    assert_response :success
  end

  test "should create district_wise_section9" do
    assert_difference('DistrictWiseSection9.count') do
      post district_wise_section9s_url, params: { district_wise_section9: { All_Colleges: @district_wise_section9.All_Colleges, B_Ed: @district_wise_section9.B_Ed, Constituent_College: @district_wise_section9.Constituent_College, Districts: @district_wise_section9.Districts, Engineering: @district_wise_section9.Engineering, Medical: @district_wise_section9.Medical, Others: @district_wise_section9.Others, Science_Arts_Commerce_College: @district_wise_section9.Science_Arts_Commerce_College, Total: @district_wise_section9.Total } }
    end

    assert_redirected_to district_wise_section9_url(DistrictWiseSection9.last)
  end

  test "should show district_wise_section9" do
    get district_wise_section9_url(@district_wise_section9)
    assert_response :success
  end

  test "should get edit" do
    get edit_district_wise_section9_url(@district_wise_section9)
    assert_response :success
  end

  test "should update district_wise_section9" do
    patch district_wise_section9_url(@district_wise_section9), params: { district_wise_section9: { All_Colleges: @district_wise_section9.All_Colleges, B_Ed: @district_wise_section9.B_Ed, Constituent_College: @district_wise_section9.Constituent_College, Districts: @district_wise_section9.Districts, Engineering: @district_wise_section9.Engineering, Medical: @district_wise_section9.Medical, Others: @district_wise_section9.Others, Science_Arts_Commerce_College: @district_wise_section9.Science_Arts_Commerce_College, Total: @district_wise_section9.Total } }
    assert_redirected_to district_wise_section9_url(@district_wise_section9)
  end

  test "should destroy district_wise_section9" do
    assert_difference('DistrictWiseSection9.count', -1) do
      delete district_wise_section9_url(@district_wise_section9)
    end

    assert_redirected_to district_wise_section9s_url
  end
end
