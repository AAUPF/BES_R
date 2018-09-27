require 'test_helper'

class MininngsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mininng = mininngs(:one)
  end

  test "should get index" do
    get mininngs_url
    assert_response :success
  end

  test "should get new" do
    get new_mininng_url
    assert_response :success
  end

  test "should create mininng" do
    assert_difference('Mininng.count') do
      post mininngs_url, params: { mininng: { 2014-15: @mininng.2014-15, 2015-16: @mininng.2015-16, 2016-17: @mininng.2016-17, Sector: @mininng.Sector } }
    end

    assert_redirected_to mininng_url(Mininng.last)
  end

  test "should show mininng" do
    get mininng_url(@mininng)
    assert_response :success
  end

  test "should get edit" do
    get edit_mininng_url(@mininng)
    assert_response :success
  end

  test "should update mininng" do
    patch mininng_url(@mininng), params: { mininng: { 2014-15: @mininng.2014-15, 2015-16: @mininng.2015-16, 2016-17: @mininng.2016-17, Sector: @mininng.Sector } }
    assert_redirected_to mininng_url(@mininng)
  end

  test "should destroy mininng" do
    assert_difference('Mininng.count', -1) do
      delete mininng_url(@mininng)
    end

    assert_redirected_to mininngs_url
  end
end
