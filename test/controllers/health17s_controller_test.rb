require 'test_helper'

class Health17sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health17 = health17s(:one)
  end

  test "should get index" do
    get health17s_url
    assert_response :success
  end

  test "should get new" do
    get new_health17_url
    assert_response :success
  end

  test "should create health17" do
    assert_difference('Health17.count') do
      post health17s_url, params: { health17: { Contractual_Grade_A_Nurses_Employed: @health17.Contractual_Grade_A_Nurses_Employed, Contractual_Post_sanctioned: @health17.Contractual_Post_sanctioned, Districts: @health17.Districts, Number_of_Grade_A_Nurses_per_lakh_population: @health17.Number_of_Grade_A_Nurses_per_lakh_population, Regular_Grade_A_Nurses_Employed: @health17.Regular_Grade_A_Nurses_Employed, Regular_Post_sanctioned: @health17.Regular_Post_sanctioned, Year: @health17.Year } }
    end

    assert_redirected_to health17_url(Health17.last)
  end

  test "should show health17" do
    get health17_url(@health17)
    assert_response :success
  end

  test "should get edit" do
    get edit_health17_url(@health17)
    assert_response :success
  end

  test "should update health17" do
    patch health17_url(@health17), params: { health17: { Contractual_Grade_A_Nurses_Employed: @health17.Contractual_Grade_A_Nurses_Employed, Contractual_Post_sanctioned: @health17.Contractual_Post_sanctioned, Districts: @health17.Districts, Number_of_Grade_A_Nurses_per_lakh_population: @health17.Number_of_Grade_A_Nurses_per_lakh_population, Regular_Grade_A_Nurses_Employed: @health17.Regular_Grade_A_Nurses_Employed, Regular_Post_sanctioned: @health17.Regular_Post_sanctioned, Year: @health17.Year } }
    assert_redirected_to health17_url(@health17)
  end

  test "should destroy health17" do
    assert_difference('Health17.count', -1) do
      delete health17_url(@health17)
    end

    assert_redirected_to health17s_url
  end
end
