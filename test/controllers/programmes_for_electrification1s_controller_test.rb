require 'test_helper'

class ProgrammesForElectrification1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programmes_for_electrification1 = programmes_for_electrification1s(:one)
  end

  test "should get index" do
    get programmes_for_electrification1s_url
    assert_response :success
  end

  test "should get new" do
    get new_programmes_for_electrification1_url
    assert_response :success
  end

  test "should create programmes_for_electrification1" do
    assert_difference('ProgrammesForElectrification1.count') do
      post programmes_for_electrification1s_url, params: { programmes_for_electrification1: { Expenditure_incurred: @programmes_for_electrification1.Expenditure_incurred, Outlay: @programmes_for_electrification1.Outlay, Project_Component_under_R_APDRP: @programmes_for_electrification1.Project_Component_under_R_APDRP } }
    end

    assert_redirected_to programmes_for_electrification1_url(ProgrammesForElectrification1.last)
  end

  test "should show programmes_for_electrification1" do
    get programmes_for_electrification1_url(@programmes_for_electrification1)
    assert_response :success
  end

  test "should get edit" do
    get edit_programmes_for_electrification1_url(@programmes_for_electrification1)
    assert_response :success
  end

  test "should update programmes_for_electrification1" do
    patch programmes_for_electrification1_url(@programmes_for_electrification1), params: { programmes_for_electrification1: { Expenditure_incurred: @programmes_for_electrification1.Expenditure_incurred, Outlay: @programmes_for_electrification1.Outlay, Project_Component_under_R_APDRP: @programmes_for_electrification1.Project_Component_under_R_APDRP } }
    assert_redirected_to programmes_for_electrification1_url(@programmes_for_electrification1)
  end

  test "should destroy programmes_for_electrification1" do
    assert_difference('ProgrammesForElectrification1.count', -1) do
      delete programmes_for_electrification1_url(@programmes_for_electrification1)
    end

    assert_redirected_to programmes_for_electrification1s_url
  end
end
