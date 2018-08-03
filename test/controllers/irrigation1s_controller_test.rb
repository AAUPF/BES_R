require 'test_helper'

class Irrigation1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @irrigation1 = irrigation1s(:one)
  end

  test "should get index" do
    get irrigation1s_url
    assert_response :success
  end

  test "should get new" do
    get new_irrigation1_url
    assert_response :success
  end

  test "should create irrigation1" do
    assert_difference('Irrigation1.count') do
      post irrigation1s_url, params: { irrigation1: { Created_Potential: @irrigation1.Created_Potential, TypeofIrrigationPotential: @irrigation1.TypeofIrrigationPotential, Ultimat_Potential: @irrigation1.Ultimat_Potential, Utilised_Potential: @irrigation1.Utilised_Potential } }
    end

    assert_redirected_to irrigation1_url(Irrigation1.last)
  end

  test "should show irrigation1" do
    get irrigation1_url(@irrigation1)
    assert_response :success
  end

  test "should get edit" do
    get edit_irrigation1_url(@irrigation1)
    assert_response :success
  end

  test "should update irrigation1" do
    patch irrigation1_url(@irrigation1), params: { irrigation1: { Created_Potential: @irrigation1.Created_Potential, TypeofIrrigationPotential: @irrigation1.TypeofIrrigationPotential, Ultimat_Potential: @irrigation1.Ultimat_Potential, Utilised_Potential: @irrigation1.Utilised_Potential } }
    assert_redirected_to irrigation1_url(@irrigation1)
  end

  test "should destroy irrigation1" do
    assert_difference('Irrigation1.count', -1) do
      delete irrigation1_url(@irrigation1)
    end

    assert_redirected_to irrigation1s_url
  end
end
