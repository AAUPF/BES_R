require 'test_helper'

class PanchayatiRaj1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @panchayati_raj1 = panchayati_raj1s(:one)
  end

  test "should get index" do
    get panchayati_raj1s_url
    assert_response :success
  end

  test "should get new" do
    get new_panchayati_raj1_url
    assert_response :success
  end

  test "should create panchayati_raj1" do
    assert_difference('PanchayatiRaj1.count') do
      post panchayati_raj1s_url, params: { panchayati_raj1: { Average_Number_of_Members_per_Panchayat: @panchayati_raj1.Average_Number_of_Members_per_Panchayat, Item: @panchayati_raj1.Item, Number: @panchayati_raj1.Number, Number_of_Members_or_Functionaries: @panchayati_raj1.Number_of_Members_or_Functionaries } }
    end

    assert_redirected_to panchayati_raj1_url(PanchayatiRaj1.last)
  end

  test "should show panchayati_raj1" do
    get panchayati_raj1_url(@panchayati_raj1)
    assert_response :success
  end

  test "should get edit" do
    get edit_panchayati_raj1_url(@panchayati_raj1)
    assert_response :success
  end

  test "should update panchayati_raj1" do
    patch panchayati_raj1_url(@panchayati_raj1), params: { panchayati_raj1: { Average_Number_of_Members_per_Panchayat: @panchayati_raj1.Average_Number_of_Members_per_Panchayat, Item: @panchayati_raj1.Item, Number: @panchayati_raj1.Number, Number_of_Members_or_Functionaries: @panchayati_raj1.Number_of_Members_or_Functionaries } }
    assert_redirected_to panchayati_raj1_url(@panchayati_raj1)
  end

  test "should destroy panchayati_raj1" do
    assert_difference('PanchayatiRaj1.count', -1) do
      delete panchayati_raj1_url(@panchayati_raj1)
    end

    assert_redirected_to panchayati_raj1s_url
  end
end
