require 'test_helper'

class BiharRenewableEnergiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bihar_renewable_energy = bihar_renewable_energies(:one)
  end

  test "should get index" do
    get bihar_renewable_energies_url
    assert_response :success
  end

  test "should get new" do
    get new_bihar_renewable_energy_url
    assert_response :success
  end

  test "should create bihar_renewable_energy" do
    assert_difference('BiharRenewableEnergy.count') do
      post bihar_renewable_energies_url, params: { bihar_renewable_energy: { Financial_Outlay: @bihar_renewable_energy.Financial_Outlay, Indicator: @bihar_renewable_energy.Indicator, Physical_Achievement: @bihar_renewable_energy.Physical_Achievement, Schemes: @bihar_renewable_energy.Schemes, Year: @bihar_renewable_energy.Year } }
    end

    assert_redirected_to bihar_renewable_energy_url(BiharRenewableEnergy.last)
  end

  test "should show bihar_renewable_energy" do
    get bihar_renewable_energy_url(@bihar_renewable_energy)
    assert_response :success
  end

  test "should get edit" do
    get edit_bihar_renewable_energy_url(@bihar_renewable_energy)
    assert_response :success
  end

  test "should update bihar_renewable_energy" do
    patch bihar_renewable_energy_url(@bihar_renewable_energy), params: { bihar_renewable_energy: { Financial_Outlay: @bihar_renewable_energy.Financial_Outlay, Indicator: @bihar_renewable_energy.Indicator, Physical_Achievement: @bihar_renewable_energy.Physical_Achievement, Schemes: @bihar_renewable_energy.Schemes, Year: @bihar_renewable_energy.Year } }
    assert_redirected_to bihar_renewable_energy_url(@bihar_renewable_energy)
  end

  test "should destroy bihar_renewable_energy" do
    assert_difference('BiharRenewableEnergy.count', -1) do
      delete bihar_renewable_energy_url(@bihar_renewable_energy)
    end

    assert_redirected_to bihar_renewable_energies_url
  end
end
