require 'test_helper'

class Irrigation6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @irrigation6 = irrigation6s(:one)
  end

  test "should get index" do
    get irrigation6s_url
    assert_response :success
  end

  test "should get new" do
    get new_irrigation6_url
    assert_response :success
  end

  test "should create irrigation6" do
    assert_difference('Irrigation6.count') do
      post irrigation6s_url, params: { irrigation6: { Other_Sources_Lift_Irrigation_and_Barge_Lift_Irrigation: @irrigation6.Other_Sources_Lift_Irrigation_and_Barge_Lift_Irrigation, Surface_Canal: @irrigation6.Surface_Canal, Tanks_including_Ahars_Pynes: @irrigation6.Tanks_including_Ahars_Pynes, Total: @irrigation6.Total, Tubewells_Private_and_State: @irrigation6.Tubewells_Private_and_State, Year: @irrigation6.Year } }
    end

    assert_redirected_to irrigation6_url(Irrigation6.last)
  end

  test "should show irrigation6" do
    get irrigation6_url(@irrigation6)
    assert_response :success
  end

  test "should get edit" do
    get edit_irrigation6_url(@irrigation6)
    assert_response :success
  end

  test "should update irrigation6" do
    patch irrigation6_url(@irrigation6), params: { irrigation6: { Other_Sources_Lift_Irrigation_and_Barge_Lift_Irrigation: @irrigation6.Other_Sources_Lift_Irrigation_and_Barge_Lift_Irrigation, Surface_Canal: @irrigation6.Surface_Canal, Tanks_including_Ahars_Pynes: @irrigation6.Tanks_including_Ahars_Pynes, Total: @irrigation6.Total, Tubewells_Private_and_State: @irrigation6.Tubewells_Private_and_State, Year: @irrigation6.Year } }
    assert_redirected_to irrigation6_url(@irrigation6)
  end

  test "should destroy irrigation6" do
    assert_difference('Irrigation6.count', -1) do
      delete irrigation6_url(@irrigation6)
    end

    assert_redirected_to irrigation6s_url
  end
end
