require 'test_helper'

class Ict3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ict3 = ict3s(:one)
  end

  test "should get index" do
    get ict3s_url
    assert_response :success
  end

  test "should get new" do
    get new_ict3_url
    assert_response :success
  end

  test "should create ict3" do
    assert_difference('Ict3.count') do
      post ict3s_url, params: { ict3: { Coverage_in_percentage: @ict3.Coverage_in_percentage, Item: @ict3.Item, Total: @ict3.Total } }
    end

    assert_redirected_to ict3_url(Ict3.last)
  end

  test "should show ict3" do
    get ict3_url(@ict3)
    assert_response :success
  end

  test "should get edit" do
    get edit_ict3_url(@ict3)
    assert_response :success
  end

  test "should update ict3" do
    patch ict3_url(@ict3), params: { ict3: { Coverage_in_percentage: @ict3.Coverage_in_percentage, Item: @ict3.Item, Total: @ict3.Total } }
    assert_redirected_to ict3_url(@ict3)
  end

  test "should destroy ict3" do
    assert_difference('Ict3.count', -1) do
      delete ict3_url(@ict3)
    end

    assert_redirected_to ict3s_url
  end
end
