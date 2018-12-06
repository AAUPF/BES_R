require 'test_helper'

class WomenEmpowerment2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @women_empowerment2 = women_empowerment2s(:one)
  end

  test "should get index" do
    get women_empowerment2s_url
    assert_response :success
  end

  test "should get new" do
    get new_women_empowerment2_url
    assert_response :success
  end

  test "should create women_empowerment2" do
    assert_difference('WomenEmpowerment2.count') do
      post women_empowerment2s_url, params: { women_empowerment2: { Sector: @women_empowerment2.Sector, Total: @women_empowerment2.Total, Total_Budget: @women_empowerment2.Total_Budget, Under_Category_I: @women_empowerment2.Under_Category_I, Under_Category_II: @women_empowerment2.Under_Category_II, Year: @women_empowerment2.Year } }
    end

    assert_redirected_to women_empowerment2_url(WomenEmpowerment2.last)
  end

  test "should show women_empowerment2" do
    get women_empowerment2_url(@women_empowerment2)
    assert_response :success
  end

  test "should get edit" do
    get edit_women_empowerment2_url(@women_empowerment2)
    assert_response :success
  end

  test "should update women_empowerment2" do
    patch women_empowerment2_url(@women_empowerment2), params: { women_empowerment2: { Sector: @women_empowerment2.Sector, Total: @women_empowerment2.Total, Total_Budget: @women_empowerment2.Total_Budget, Under_Category_I: @women_empowerment2.Under_Category_I, Under_Category_II: @women_empowerment2.Under_Category_II, Year: @women_empowerment2.Year } }
    assert_redirected_to women_empowerment2_url(@women_empowerment2)
  end

  test "should destroy women_empowerment2" do
    assert_difference('WomenEmpowerment2.count', -1) do
      delete women_empowerment2_url(@women_empowerment2)
    end

    assert_redirected_to women_empowerment2s_url
  end
end
