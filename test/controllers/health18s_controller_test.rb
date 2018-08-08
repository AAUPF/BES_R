require 'test_helper'

class Health18sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health18 = health18s(:one)
  end

  test "should get index" do
    get health18s_url
    assert_response :success
  end

  test "should get new" do
    get new_health18_url
    assert_response :success
  end

  test "should create health18" do
    assert_difference('Health18.count') do
      post health18s_url, params: { health18: { Contractual_ANM_Employed: @health18.Contractual_ANM_Employed, Contractual_Post_sanctioned: @health18.Contractual_Post_sanctioned, Districts: @health18.Districts, Number_of_ANM_per_lakh_population: @health18.Number_of_ANM_per_lakh_population, Regular_ANM_Employed: @health18.Regular_ANM_Employed, Regular_Post_sanctioned: @health18.Regular_Post_sanctioned, Year: @health18.Year } }
    end

    assert_redirected_to health18_url(Health18.last)
  end

  test "should show health18" do
    get health18_url(@health18)
    assert_response :success
  end

  test "should get edit" do
    get edit_health18_url(@health18)
    assert_response :success
  end

  test "should update health18" do
    patch health18_url(@health18), params: { health18: { Contractual_ANM_Employed: @health18.Contractual_ANM_Employed, Contractual_Post_sanctioned: @health18.Contractual_Post_sanctioned, Districts: @health18.Districts, Number_of_ANM_per_lakh_population: @health18.Number_of_ANM_per_lakh_population, Regular_ANM_Employed: @health18.Regular_ANM_Employed, Regular_Post_sanctioned: @health18.Regular_Post_sanctioned, Year: @health18.Year } }
    assert_redirected_to health18_url(@health18)
  end

  test "should destroy health18" do
    assert_difference('Health18.count', -1) do
      delete health18_url(@health18)
    end

    assert_redirected_to health18s_url
  end
end
