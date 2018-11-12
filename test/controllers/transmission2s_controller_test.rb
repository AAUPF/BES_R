require 'test_helper'

class Transmission2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transmission2 = transmission2s(:one)
  end

  test "should get index" do
    get transmission2s_url
    assert_response :success
  end

  test "should get new" do
    get new_transmission2_url
    assert_response :success
  end

  test "should create transmission2" do
    assert_difference('Transmission2.count') do
      post transmission2s_url, params: { transmission2: { New_Transmission_Lines_Circuit_km: @transmission2.New_Transmission_Lines_Circuit_km, Nos_of_New_Grid_Sub_Stations: @transmission2.Nos_of_New_Grid_Sub_Stations, Year: @transmission2.Year } }
    end

    assert_redirected_to transmission2_url(Transmission2.last)
  end

  test "should show transmission2" do
    get transmission2_url(@transmission2)
    assert_response :success
  end

  test "should get edit" do
    get edit_transmission2_url(@transmission2)
    assert_response :success
  end

  test "should update transmission2" do
    patch transmission2_url(@transmission2), params: { transmission2: { New_Transmission_Lines_Circuit_km: @transmission2.New_Transmission_Lines_Circuit_km, Nos_of_New_Grid_Sub_Stations: @transmission2.Nos_of_New_Grid_Sub_Stations, Year: @transmission2.Year } }
    assert_redirected_to transmission2_url(@transmission2)
  end

  test "should destroy transmission2" do
    assert_difference('Transmission2.count', -1) do
      delete transmission2_url(@transmission2)
    end

    assert_redirected_to transmission2s_url
  end
end
