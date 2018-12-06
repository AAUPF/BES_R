require 'test_helper'

class WomenEmpowerment1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @women_empowerment1 = women_empowerment1s(:one)
  end

  test "should get index" do
    get women_empowerment1s_url
    assert_response :success
  end

  test "should get new" do
    get new_women_empowerment1_url
    assert_response :success
  end

  test "should create women_empowerment1" do
    assert_difference('WomenEmpowerment1.count') do
      post women_empowerment1s_url, params: { women_empowerment1: { 2012-13: @women_empowerment1.2012-13, 2013-14: @women_empowerment1.2013-14, 2014-15: @women_empowerment1.2014-15, 2015-16: @women_empowerment1.2015-16, 2016-17: @women_empowerment1.2016-17, Details: @women_empowerment1.Details } }
    end

    assert_redirected_to women_empowerment1_url(WomenEmpowerment1.last)
  end

  test "should show women_empowerment1" do
    get women_empowerment1_url(@women_empowerment1)
    assert_response :success
  end

  test "should get edit" do
    get edit_women_empowerment1_url(@women_empowerment1)
    assert_response :success
  end

  test "should update women_empowerment1" do
    patch women_empowerment1_url(@women_empowerment1), params: { women_empowerment1: { 2012-13: @women_empowerment1.2012-13, 2013-14: @women_empowerment1.2013-14, 2014-15: @women_empowerment1.2014-15, 2015-16: @women_empowerment1.2015-16, 2016-17: @women_empowerment1.2016-17, Details: @women_empowerment1.Details } }
    assert_redirected_to women_empowerment1_url(@women_empowerment1)
  end

  test "should destroy women_empowerment1" do
    assert_difference('WomenEmpowerment1.count', -1) do
      delete women_empowerment1_url(@women_empowerment1)
    end

    assert_redirected_to women_empowerment1s_url
  end
end
