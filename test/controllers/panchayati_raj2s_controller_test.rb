require 'test_helper'

class PanchayatiRaj2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @panchayati_raj2 = panchayati_raj2s(:one)
  end

  test "should get index" do
    get panchayati_raj2s_url
    assert_response :success
  end

  test "should get new" do
    get new_panchayati_raj2_url
    assert_response :success
  end

  test "should create panchayati_raj2" do
    assert_difference('PanchayatiRaj2.count') do
      post panchayati_raj2s_url, params: { panchayati_raj2: { 2013_14_Actual: @panchayati_raj2.2013_14_Actual, 2014_15_Actual: @panchayati_raj2.2014_15_Actual, 2015_16_Actual: @panchayati_raj2.2015_16_Actual, 2016_17_BE: @panchayati_raj2.2016_17_BE, Indicatorstring: @panchayati_raj2.Indicatorstring, Sector: @panchayati_raj2.Sector } }
    end

    assert_redirected_to panchayati_raj2_url(PanchayatiRaj2.last)
  end

  test "should show panchayati_raj2" do
    get panchayati_raj2_url(@panchayati_raj2)
    assert_response :success
  end

  test "should get edit" do
    get edit_panchayati_raj2_url(@panchayati_raj2)
    assert_response :success
  end

  test "should update panchayati_raj2" do
    patch panchayati_raj2_url(@panchayati_raj2), params: { panchayati_raj2: { 2013_14_Actual: @panchayati_raj2.2013_14_Actual, 2014_15_Actual: @panchayati_raj2.2014_15_Actual, 2015_16_Actual: @panchayati_raj2.2015_16_Actual, 2016_17_BE: @panchayati_raj2.2016_17_BE, Indicatorstring: @panchayati_raj2.Indicatorstring, Sector: @panchayati_raj2.Sector } }
    assert_redirected_to panchayati_raj2_url(@panchayati_raj2)
  end

  test "should destroy panchayati_raj2" do
    assert_difference('PanchayatiRaj2.count', -1) do
      delete panchayati_raj2_url(@panchayati_raj2)
    end

    assert_redirected_to panchayati_raj2s_url
  end
end
