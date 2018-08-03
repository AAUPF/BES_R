require 'test_helper'

class Irrigation2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @irrigation2 = irrigation2s(:one)
  end

  test "should get index" do
    get irrigation2s_url
    assert_response :success
  end

  test "should get new" do
    get new_irrigation2_url
    assert_response :success
  end

  test "should create irrigation2" do
    assert_difference('Irrigation2.count') do
      post irrigation2s_url, params: { irrigation2: { Created_Irrigation_Potential: @irrigation2.Created_Irrigation_Potential, Name_of_Scheme: @irrigation2.Name_of_Scheme } }
    end

    assert_redirected_to irrigation2_url(Irrigation2.last)
  end

  test "should show irrigation2" do
    get irrigation2_url(@irrigation2)
    assert_response :success
  end

  test "should get edit" do
    get edit_irrigation2_url(@irrigation2)
    assert_response :success
  end

  test "should update irrigation2" do
    patch irrigation2_url(@irrigation2), params: { irrigation2: { Created_Irrigation_Potential: @irrigation2.Created_Irrigation_Potential, Name_of_Scheme: @irrigation2.Name_of_Scheme } }
    assert_redirected_to irrigation2_url(@irrigation2)
  end

  test "should destroy irrigation2" do
    assert_difference('Irrigation2.count', -1) do
      delete irrigation2_url(@irrigation2)
    end

    assert_redirected_to irrigation2s_url
  end
end
