require 'test_helper'

class Health5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health5 = health5s(:one)
  end

  test "should get index" do
    get health5s_url
    assert_response :success
  end

  test "should get new" do
    get new_health5_url
    assert_response :success
  end

  test "should create health5" do
    assert_difference('Health5.count') do
      post health5s_url, params: { health5: { APHC: @health5.APHC, District_Hospital: @health5.District_Hospital, Health_centres_per_lakh_of_population: @health5.Health_centres_per_lakh_of_population, PHC: @health5.PHC, Referral_Hospital: @health5.Referral_Hospital, Sub_Centre: @health5.Sub_Centre, Sub_Divisional_Hospital: @health5.Sub_Divisional_Hospital, Total_Health_Centre: @health5.Total_Health_Centre, Year: @health5.Year } }
    end

    assert_redirected_to health5_url(Health5.last)
  end

  test "should show health5" do
    get health5_url(@health5)
    assert_response :success
  end

  test "should get edit" do
    get edit_health5_url(@health5)
    assert_response :success
  end

  test "should update health5" do
    patch health5_url(@health5), params: { health5: { APHC: @health5.APHC, District_Hospital: @health5.District_Hospital, Health_centres_per_lakh_of_population: @health5.Health_centres_per_lakh_of_population, PHC: @health5.PHC, Referral_Hospital: @health5.Referral_Hospital, Sub_Centre: @health5.Sub_Centre, Sub_Divisional_Hospital: @health5.Sub_Divisional_Hospital, Total_Health_Centre: @health5.Total_Health_Centre, Year: @health5.Year } }
    assert_redirected_to health5_url(@health5)
  end

  test "should destroy health5" do
    assert_difference('Health5.count', -1) do
      delete health5_url(@health5)
    end

    assert_redirected_to health5s_url
  end
end
