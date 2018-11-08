require 'test_helper'

class Ict2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ict2 = ict2s(:one)
  end

  test "should get index" do
    get ict2s_url
    assert_response :success
  end

  test "should get new" do
    get new_ict2_url
    assert_response :success
  end

  test "should create ict2" do
    assert_difference('Ict2.count') do
      post ict2s_url, params: { ict2: { All: @ict2.All, Rural: @ict2.Rural, State: @ict2.State, Urban: @ict2.Urban, Year: @ict2.Year } }
    end

    assert_redirected_to ict2_url(Ict2.last)
  end

  test "should show ict2" do
    get ict2_url(@ict2)
    assert_response :success
  end

  test "should get edit" do
    get edit_ict2_url(@ict2)
    assert_response :success
  end

  test "should update ict2" do
    patch ict2_url(@ict2), params: { ict2: { All: @ict2.All, Rural: @ict2.Rural, State: @ict2.State, Urban: @ict2.Urban, Year: @ict2.Year } }
    assert_redirected_to ict2_url(@ict2)
  end

  test "should destroy ict2" do
    assert_difference('Ict2.count', -1) do
      delete ict2_url(@ict2)
    end

    assert_redirected_to ict2s_url
  end
end
