require 'test_helper'

class Irrigation3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @irrigation3 = irrigation3s(:one)
  end

  test "should get index" do
    get irrigation3s_url
    assert_response :success
  end

  test "should get new" do
    get new_irrigation3_url
    assert_response :success
  end

  test "should create irrigation3" do
    assert_difference('Irrigation3.count') do
      post irrigation3s_url, params: { irrigation3: { Created_Irrigation_Potential: @irrigation3.Created_Irrigation_Potential, Hot_Weather_Irrigation: @irrigation3.Hot_Weather_Irrigation, Hot_Weather_Target: @irrigation3.Hot_Weather_Target, Kharif_Irrigation: @irrigation3.Kharif_Irrigation, Kharif_Target: @irrigation3.Kharif_Target, Rabi_Irrigation: @irrigation3.Rabi_Irrigation, Rabi_Target: @irrigation3.Rabi_Target, Total_Utilised_Irrigation_Potential: @irrigation3.Total_Utilised_Irrigation_Potential, Utilisation_Efficiency: @irrigation3.Utilisation_Efficiency, Year: @irrigation3.Year } }
    end

    assert_redirected_to irrigation3_url(Irrigation3.last)
  end

  test "should show irrigation3" do
    get irrigation3_url(@irrigation3)
    assert_response :success
  end

  test "should get edit" do
    get edit_irrigation3_url(@irrigation3)
    assert_response :success
  end

  test "should update irrigation3" do
    patch irrigation3_url(@irrigation3), params: { irrigation3: { Created_Irrigation_Potential: @irrigation3.Created_Irrigation_Potential, Hot_Weather_Irrigation: @irrigation3.Hot_Weather_Irrigation, Hot_Weather_Target: @irrigation3.Hot_Weather_Target, Kharif_Irrigation: @irrigation3.Kharif_Irrigation, Kharif_Target: @irrigation3.Kharif_Target, Rabi_Irrigation: @irrigation3.Rabi_Irrigation, Rabi_Target: @irrigation3.Rabi_Target, Total_Utilised_Irrigation_Potential: @irrigation3.Total_Utilised_Irrigation_Potential, Utilisation_Efficiency: @irrigation3.Utilisation_Efficiency, Year: @irrigation3.Year } }
    assert_redirected_to irrigation3_url(@irrigation3)
  end

  test "should destroy irrigation3" do
    assert_difference('Irrigation3.count', -1) do
      delete irrigation3_url(@irrigation3)
    end

    assert_redirected_to irrigation3s_url
  end
end
