require 'test_helper'

class StatePublicSector2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_public_sector2 = state_public_sector2s(:one)
  end

  test "should get index" do
    get state_public_sector2s_url
    assert_response :success
  end

  test "should get new" do
    get new_state_public_sector2_url
    assert_response :success
  end

  test "should create state_public_sector2" do
    assert_difference('StatePublicSector2.count') do
      post state_public_sector2s_url, params: { state_public_sector2: { Government_Companies_Capital: @state_public_sector2.Government_Companies_Capital, Government_Companies_Long_Term_Loans: @state_public_sector2.Government_Companies_Long_Term_Loans, Grand_Total: @state_public_sector2.Grand_Total, Statutory_Corporations_Capital: @state_public_sector2.Statutory_Corporations_Capital, Statutory_Corporations_Long_Term_Loans: @state_public_sector2.Statutory_Corporations_Long_Term_Loans, Total_Government_Companies: @state_public_sector2.Total_Government_Companies, Total_Statutory_Corporations: @state_public_sector2.Total_Statutory_Corporations, Type_of_Company_or_corporation: @state_public_sector2.Type_of_Company_or_corporation } }
    end

    assert_redirected_to state_public_sector2_url(StatePublicSector2.last)
  end

  test "should show state_public_sector2" do
    get state_public_sector2_url(@state_public_sector2)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_public_sector2_url(@state_public_sector2)
    assert_response :success
  end

  test "should update state_public_sector2" do
    patch state_public_sector2_url(@state_public_sector2), params: { state_public_sector2: { Government_Companies_Capital: @state_public_sector2.Government_Companies_Capital, Government_Companies_Long_Term_Loans: @state_public_sector2.Government_Companies_Long_Term_Loans, Grand_Total: @state_public_sector2.Grand_Total, Statutory_Corporations_Capital: @state_public_sector2.Statutory_Corporations_Capital, Statutory_Corporations_Long_Term_Loans: @state_public_sector2.Statutory_Corporations_Long_Term_Loans, Total_Government_Companies: @state_public_sector2.Total_Government_Companies, Total_Statutory_Corporations: @state_public_sector2.Total_Statutory_Corporations, Type_of_Company_or_corporation: @state_public_sector2.Type_of_Company_or_corporation } }
    assert_redirected_to state_public_sector2_url(@state_public_sector2)
  end

  test "should destroy state_public_sector2" do
    assert_difference('StatePublicSector2.count', -1) do
      delete state_public_sector2_url(@state_public_sector2)
    end

    assert_redirected_to state_public_sector2s_url
  end
end
