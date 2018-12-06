require 'test_helper'

class DistrictWiseSection5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @district_wise_section5 = district_wise_section5s(:one)
  end

  test "should get index" do
    get district_wise_section5s_url
    assert_response :success
  end

  test "should get new" do
    get new_district_wise_section5_url
    assert_response :success
  end

  test "should create district_wise_section5" do
    assert_difference('DistrictWiseSection5.count') do
      post district_wise_section5s_url, params: { district_wise_section5: { Districts: @district_wise_section5.Districts, Primary_Schools: @district_wise_section5.Primary_Schools, Total: @district_wise_section5.Total, Upper_Primary_Schools: @district_wise_section5.Upper_Primary_Schools } }
    end

    assert_redirected_to district_wise_section5_url(DistrictWiseSection5.last)
  end

  test "should show district_wise_section5" do
    get district_wise_section5_url(@district_wise_section5)
    assert_response :success
  end

  test "should get edit" do
    get edit_district_wise_section5_url(@district_wise_section5)
    assert_response :success
  end

  test "should update district_wise_section5" do
    patch district_wise_section5_url(@district_wise_section5), params: { district_wise_section5: { Districts: @district_wise_section5.Districts, Primary_Schools: @district_wise_section5.Primary_Schools, Total: @district_wise_section5.Total, Upper_Primary_Schools: @district_wise_section5.Upper_Primary_Schools } }
    assert_redirected_to district_wise_section5_url(@district_wise_section5)
  end

  test "should destroy district_wise_section5" do
    assert_difference('DistrictWiseSection5.count', -1) do
      delete district_wise_section5_url(@district_wise_section5)
    end

    assert_redirected_to district_wise_section5s_url
  end
end
