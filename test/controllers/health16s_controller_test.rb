require 'test_helper'

class Health16sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health16 = health16s(:one)
  end

  test "should get index" do
    get health16s_url
    assert_response :success
  end

  test "should get new" do
    get new_health16_url
    assert_response :success
  end

  test "should create health16" do
    assert_difference('Health16.count') do
      post health16s_url, params: { health16: { Contractual_Doctor_Employed: @health16.Contractual_Doctor_Employed, Contractual_Post_sanctioned: @health16.Contractual_Post_sanctioned, Districts: @health16.Districts, Number_of_doctors_per_lakh_population: @health16.Number_of_doctors_per_lakh_population, Regular_Doctor_Employed: @health16.Regular_Doctor_Employed, Regular_Post_sanctioned: @health16.Regular_Post_sanctioned, Year: @health16.Year } }
    end

    assert_redirected_to health16_url(Health16.last)
  end

  test "should show health16" do
    get health16_url(@health16)
    assert_response :success
  end

  test "should get edit" do
    get edit_health16_url(@health16)
    assert_response :success
  end

  test "should update health16" do
    patch health16_url(@health16), params: { health16: { Contractual_Doctor_Employed: @health16.Contractual_Doctor_Employed, Contractual_Post_sanctioned: @health16.Contractual_Post_sanctioned, Districts: @health16.Districts, Number_of_doctors_per_lakh_population: @health16.Number_of_doctors_per_lakh_population, Regular_Doctor_Employed: @health16.Regular_Doctor_Employed, Regular_Post_sanctioned: @health16.Regular_Post_sanctioned, Year: @health16.Year } }
    assert_redirected_to health16_url(@health16)
  end

  test "should destroy health16" do
    assert_difference('Health16.count', -1) do
      delete health16_url(@health16)
    end

    assert_redirected_to health16s_url
  end
end
