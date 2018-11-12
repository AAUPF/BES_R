require 'test_helper'

class Generation2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generation2 = generation2s(:one)
  end

  test "should get index" do
    get generation2s_url
    assert_response :success
  end

  test "should get new" do
    get new_generation2_url
    assert_response :success
  end

  test "should create generation2" do
    assert_difference('Generation2.count') do
      post generation2s_url, params: { generation2: { 2015-16: @generation2.2015-16, 2016-17: @generation2.2016-17, 2017-18_Under_Progress: @generation2.2017-18_Under_Progress, 2018-19: @generation2.2018-19, Beyond_2022: @generation2.Beyond_2022, By_2022_Upcoming_Projects: @generation2.By_2022_Upcoming_Projects, Thermal_Plan: @generation2.Thermal_Plan } }
    end

    assert_redirected_to generation2_url(Generation2.last)
  end

  test "should show generation2" do
    get generation2_url(@generation2)
    assert_response :success
  end

  test "should get edit" do
    get edit_generation2_url(@generation2)
    assert_response :success
  end

  test "should update generation2" do
    patch generation2_url(@generation2), params: { generation2: { 2015-16: @generation2.2015-16, 2016-17: @generation2.2016-17, 2017-18_Under_Progress: @generation2.2017-18_Under_Progress, 2018-19: @generation2.2018-19, Beyond_2022: @generation2.Beyond_2022, By_2022_Upcoming_Projects: @generation2.By_2022_Upcoming_Projects, Thermal_Plan: @generation2.Thermal_Plan } }
    assert_redirected_to generation2_url(@generation2)
  end

  test "should destroy generation2" do
    assert_difference('Generation2.count', -1) do
      delete generation2_url(@generation2)
    end

    assert_redirected_to generation2s_url
  end
end
