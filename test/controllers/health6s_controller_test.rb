require 'test_helper'

class Health6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health6 = health6s(:one)
  end

  test "should get index" do
    get health6s_url
    assert_response :success
  end

  test "should get new" do
    get new_health6_url
    assert_response :success
  end

  test "should create health6" do
    assert_difference('Health6.count') do
      post health6s_url, params: { health6: { Average_number_of_Outpatient_visits_per_day: @health6.Average_number_of_Outpatient_visits_per_day, Districts: @health6.Districts, Inpatient_Bed_Occupancy_Rate: @health6.Inpatient_Bed_Occupancy_Rate, Year: @health6.Year } }
    end

    assert_redirected_to health6_url(Health6.last)
  end

  test "should show health6" do
    get health6_url(@health6)
    assert_response :success
  end

  test "should get edit" do
    get edit_health6_url(@health6)
    assert_response :success
  end

  test "should update health6" do
    patch health6_url(@health6), params: { health6: { Average_number_of_Outpatient_visits_per_day: @health6.Average_number_of_Outpatient_visits_per_day, Districts: @health6.Districts, Inpatient_Bed_Occupancy_Rate: @health6.Inpatient_Bed_Occupancy_Rate, Year: @health6.Year } }
    assert_redirected_to health6_url(@health6)
  end

  test "should destroy health6" do
    assert_difference('Health6.count', -1) do
      delete health6_url(@health6)
    end

    assert_redirected_to health6s_url
  end
end
