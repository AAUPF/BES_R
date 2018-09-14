require 'test_helper'

class StatePublicSector3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_public_sector3 = state_public_sector3s(:one)
  end

  test "should get index" do
    get state_public_sector3s_url
    assert_response :success
  end

  test "should get new" do
    get new_state_public_sector3_url
    assert_response :success
  end

  test "should create state_public_sector3" do
    assert_difference('StatePublicSector3.count') do
      post state_public_sector3s_url, params: { state_public_sector3: { Number_of_NonWorking_Companies: @state_public_sector3.Number_of_NonWorking_Companies, Number_of_Statutory_Corporations: @state_public_sector3.Number_of_Statutory_Corporations, Number_of_Working_Companies: @state_public_sector3.Number_of_Working_Companies, Sector: @state_public_sector3.Sector } }
    end

    assert_redirected_to state_public_sector3_url(StatePublicSector3.last)
  end

  test "should show state_public_sector3" do
    get state_public_sector3_url(@state_public_sector3)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_public_sector3_url(@state_public_sector3)
    assert_response :success
  end

  test "should update state_public_sector3" do
    patch state_public_sector3_url(@state_public_sector3), params: { state_public_sector3: { Number_of_NonWorking_Companies: @state_public_sector3.Number_of_NonWorking_Companies, Number_of_Statutory_Corporations: @state_public_sector3.Number_of_Statutory_Corporations, Number_of_Working_Companies: @state_public_sector3.Number_of_Working_Companies, Sector: @state_public_sector3.Sector } }
    assert_redirected_to state_public_sector3_url(@state_public_sector3)
  end

  test "should destroy state_public_sector3" do
    assert_difference('StatePublicSector3.count', -1) do
      delete state_public_sector3_url(@state_public_sector3)
    end

    assert_redirected_to state_public_sector3s_url
  end
end
