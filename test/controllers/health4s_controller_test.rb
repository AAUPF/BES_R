require 'test_helper'

class Health4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health4 = health4s(:one)
  end

  test "should get index" do
    get health4s_url
    assert_response :success
  end

  test "should get new" do
    get new_health4_url
    assert_response :success
  end

  test "should create health4" do
    assert_difference('Health4.count') do
      post health4s_url, params: { health4: { Number_of_patients_visiting_government_hospitals_per_month: @health4.Number_of_patients_visiting_government_hospitals_per_month, Percentage_growth: @health4.Percentage_growth, Year: @health4.Year } }
    end

    assert_redirected_to health4_url(Health4.last)
  end

  test "should show health4" do
    get health4_url(@health4)
    assert_response :success
  end

  test "should get edit" do
    get edit_health4_url(@health4)
    assert_response :success
  end

  test "should update health4" do
    patch health4_url(@health4), params: { health4: { Number_of_patients_visiting_government_hospitals_per_month: @health4.Number_of_patients_visiting_government_hospitals_per_month, Percentage_growth: @health4.Percentage_growth, Year: @health4.Year } }
    assert_redirected_to health4_url(@health4)
  end

  test "should destroy health4" do
    assert_difference('Health4.count', -1) do
      delete health4_url(@health4)
    end

    assert_redirected_to health4s_url
  end
end
