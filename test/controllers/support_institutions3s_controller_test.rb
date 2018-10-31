require 'test_helper'

class SupportInstitutions3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @support_institutions3 = support_institutions3s(:one)
  end

  test "should get index" do
    get support_institutions3s_url
    assert_response :success
  end

  test "should get new" do
    get new_support_institutions3_url
    assert_response :success
  end

  test "should create support_institutions3" do
    assert_difference('SupportInstitutions3.count') do
      post support_institutions3s_url, params: { support_institutions3: { Number_of_Units_Closed_in_Cancellation_Process: @support_institutions3.Number_of_Units_Closed_in_Cancellation_Process, Number_of_Units_which_have_not_started_Construction: @support_institutions3.Number_of_Units_which_have_not_started_Construction, Number_of_Working_Units: @support_institutions3.Number_of_Working_Units, Number_of_Working_Units_under_Construction: @support_institutions3.Number_of_Working_Units_under_Construction, Regional_Office: @support_institutions3.Regional_Office, Total_existing_Units: @support_institutions3.Total_existing_Units } }
    end

    assert_redirected_to support_institutions3_url(SupportInstitutions3.last)
  end

  test "should show support_institutions3" do
    get support_institutions3_url(@support_institutions3)
    assert_response :success
  end

  test "should get edit" do
    get edit_support_institutions3_url(@support_institutions3)
    assert_response :success
  end

  test "should update support_institutions3" do
    patch support_institutions3_url(@support_institutions3), params: { support_institutions3: { Number_of_Units_Closed_in_Cancellation_Process: @support_institutions3.Number_of_Units_Closed_in_Cancellation_Process, Number_of_Units_which_have_not_started_Construction: @support_institutions3.Number_of_Units_which_have_not_started_Construction, Number_of_Working_Units: @support_institutions3.Number_of_Working_Units, Number_of_Working_Units_under_Construction: @support_institutions3.Number_of_Working_Units_under_Construction, Regional_Office: @support_institutions3.Regional_Office, Total_existing_Units: @support_institutions3.Total_existing_Units } }
    assert_redirected_to support_institutions3_url(@support_institutions3)
  end

  test "should destroy support_institutions3" do
    assert_difference('SupportInstitutions3.count', -1) do
      delete support_institutions3_url(@support_institutions3)
    end

    assert_redirected_to support_institutions3s_url
  end
end
