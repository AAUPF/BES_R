require 'test_helper'

class Health9sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health9 = health9s(:one)
  end

  test "should get index" do
    get health9s_url
    assert_response :success
  end

  test "should get new" do
    get new_health9_url
    assert_response :success
  end

  test "should create health9" do
    assert_difference('Health9.count') do
      post health9s_url, params: { health9: { Percentage_Point_Increase: @health9.Percentage_Point_Increase, Percentage_of_children_fully_immunized_NFHS_3_2005_06: @health9.Percentage_of_children_fully_immunized_NFHS_3_2005_06, Percentage_of_children_fully_immunized_NFHS_4_2015_16: @health9.Percentage_of_children_fully_immunized_NFHS_4_2015_16, Rank_by_percentage_increase: @health9.Rank_by_percentage_increase, State: @health9.State } }
    end

    assert_redirected_to health9_url(Health9.last)
  end

  test "should show health9" do
    get health9_url(@health9)
    assert_response :success
  end

  test "should get edit" do
    get edit_health9_url(@health9)
    assert_response :success
  end

  test "should update health9" do
    patch health9_url(@health9), params: { health9: { Percentage_Point_Increase: @health9.Percentage_Point_Increase, Percentage_of_children_fully_immunized_NFHS_3_2005_06: @health9.Percentage_of_children_fully_immunized_NFHS_3_2005_06, Percentage_of_children_fully_immunized_NFHS_4_2015_16: @health9.Percentage_of_children_fully_immunized_NFHS_4_2015_16, Rank_by_percentage_increase: @health9.Rank_by_percentage_increase, State: @health9.State } }
    assert_redirected_to health9_url(@health9)
  end

  test "should destroy health9" do
    assert_difference('Health9.count', -1) do
      delete health9_url(@health9)
    end

    assert_redirected_to health9s_url
  end
end
