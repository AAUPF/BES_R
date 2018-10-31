require 'test_helper'

class RailwaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @railway = railways(:one)
  end

  test "should get index" do
    get railways_url
    assert_response :success
  end

  test "should get new" do
    get new_railway_url
    assert_response :success
  end

  test "should create railway" do
    assert_difference('Railway.count') do
      post railways_url, params: { railway: { States: @railway.States, Total_Rail_Route: @railway.Total_Rail_Route, Total_Rail_Route_Per_1000_sq_km: @railway.Total_Rail_Route_Per_1000_sq_km, Total_Rail_Route_Per_lakh_Population: @railway.Total_Rail_Route_Per_lakh_Population, Total_Rail_Track: @railway.Total_Rail_Track, Total_Rail_Track_Per_1000_sq_km: @railway.Total_Rail_Track_Per_1000_sq_km, Total_Rail_Track_Per_lakh_Population: @railway.Total_Rail_Track_Per_lakh_Population } }
    end

    assert_redirected_to railway_url(Railway.last)
  end

  test "should show railway" do
    get railway_url(@railway)
    assert_response :success
  end

  test "should get edit" do
    get edit_railway_url(@railway)
    assert_response :success
  end

  test "should update railway" do
    patch railway_url(@railway), params: { railway: { States: @railway.States, Total_Rail_Route: @railway.Total_Rail_Route, Total_Rail_Route_Per_1000_sq_km: @railway.Total_Rail_Route_Per_1000_sq_km, Total_Rail_Route_Per_lakh_Population: @railway.Total_Rail_Route_Per_lakh_Population, Total_Rail_Track: @railway.Total_Rail_Track, Total_Rail_Track_Per_1000_sq_km: @railway.Total_Rail_Track_Per_1000_sq_km, Total_Rail_Track_Per_lakh_Population: @railway.Total_Rail_Track_Per_lakh_Population } }
    assert_redirected_to railway_url(@railway)
  end

  test "should destroy railway" do
    assert_difference('Railway.count', -1) do
      delete railway_url(@railway)
    end

    assert_redirected_to railways_url
  end
end
