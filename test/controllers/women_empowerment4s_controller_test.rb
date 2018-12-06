require 'test_helper'

class WomenEmpowerment4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @women_empowerment4 = women_empowerment4s(:one)
  end

  test "should get index" do
    get women_empowerment4s_url
    assert_response :success
  end

  test "should get new" do
    get new_women_empowerment4_url
    assert_response :success
  end

  test "should create women_empowerment4" do
    assert_difference('WomenEmpowerment4.count') do
      post women_empowerment4s_url, params: { women_empowerment4: { Disposed: @women_empowerment4.Disposed, Percentage_of_Case_Disposed: @women_empowerment4.Percentage_of_Case_Disposed, Registered: @women_empowerment4.Registered, Types_of_Cases: @women_empowerment4.Types_of_Cases, Year: @women_empowerment4.Year } }
    end

    assert_redirected_to women_empowerment4_url(WomenEmpowerment4.last)
  end

  test "should show women_empowerment4" do
    get women_empowerment4_url(@women_empowerment4)
    assert_response :success
  end

  test "should get edit" do
    get edit_women_empowerment4_url(@women_empowerment4)
    assert_response :success
  end

  test "should update women_empowerment4" do
    patch women_empowerment4_url(@women_empowerment4), params: { women_empowerment4: { Disposed: @women_empowerment4.Disposed, Percentage_of_Case_Disposed: @women_empowerment4.Percentage_of_Case_Disposed, Registered: @women_empowerment4.Registered, Types_of_Cases: @women_empowerment4.Types_of_Cases, Year: @women_empowerment4.Year } }
    assert_redirected_to women_empowerment4_url(@women_empowerment4)
  end

  test "should destroy women_empowerment4" do
    assert_difference('WomenEmpowerment4.count', -1) do
      delete women_empowerment4_url(@women_empowerment4)
    end

    assert_redirected_to women_empowerment4s_url
  end
end
