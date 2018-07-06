require 'test_helper'

class HhsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hh = hhs(:one)
  end

  test "should get index" do
    get hhs_url
    assert_response :success
  end

  test "should get new" do
    get new_hh_url
    assert_response :success
  end

  test "should create hh" do
    assert_difference('Hh.count') do
      post hhs_url, params: { hh: { name: @hh.name } }
    end

    assert_redirected_to hh_url(Hh.last)
  end

  test "should show hh" do
    get hh_url(@hh)
    assert_response :success
  end

  test "should get edit" do
    get edit_hh_url(@hh)
    assert_response :success
  end

  test "should update hh" do
    patch hh_url(@hh), params: { hh: { name: @hh.name } }
    assert_redirected_to hh_url(@hh)
  end

  test "should destroy hh" do
    assert_difference('Hh.count', -1) do
      delete hh_url(@hh)
    end

    assert_redirected_to hhs_url
  end
end
