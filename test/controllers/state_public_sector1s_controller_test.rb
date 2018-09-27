require 'test_helper'

class StatePublicSector1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_public_sector1 = state_public_sector1s(:one)
  end

  test "should get index" do
    get state_public_sector1s_url
    assert_response :success
  end

  test "should get new" do
    get new_state_public_sector1_url
    assert_response :success
  end

  test "should create state_public_sector1" do
    assert_difference('StatePublicSector1.count') do
      post state_public_sector1s_url, params: { state_public_sector1: { Equity: @state_public_sector1.Equity, Investment: @state_public_sector1.Investment, Loans: @state_public_sector1.Loans, Number_of_Non_Working_PSUs: @state_public_sector1.Number_of_Non_Working_PSUs, Number_of_Working_PSUs: @state_public_sector1.Number_of_Working_PSUs, Public_Sector_Companies: @state_public_sector1.Public_Sector_Companies, Statutory_Corporations: @state_public_sector1.Statutory_Corporations, Year_as_on_31st_March: @state_public_sector1.Year_as_on_31st_March } }
    end

    assert_redirected_to state_public_sector1_url(StatePublicSector1.last)
  end

  test "should show state_public_sector1" do
    get state_public_sector1_url(@state_public_sector1)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_public_sector1_url(@state_public_sector1)
    assert_response :success
  end

  test "should update state_public_sector1" do
    patch state_public_sector1_url(@state_public_sector1), params: { state_public_sector1: { Equity: @state_public_sector1.Equity, Investment: @state_public_sector1.Investment, Loans: @state_public_sector1.Loans, Number_of_Non_Working_PSUs: @state_public_sector1.Number_of_Non_Working_PSUs, Number_of_Working_PSUs: @state_public_sector1.Number_of_Working_PSUs, Public_Sector_Companies: @state_public_sector1.Public_Sector_Companies, Statutory_Corporations: @state_public_sector1.Statutory_Corporations, Year_as_on_31st_March: @state_public_sector1.Year_as_on_31st_March } }
    assert_redirected_to state_public_sector1_url(@state_public_sector1)
  end

  test "should destroy state_public_sector1" do
    assert_difference('StatePublicSector1.count', -1) do
      delete state_public_sector1_url(@state_public_sector1)
    end

    assert_redirected_to state_public_sector1s_url
  end
end
