require 'test_helper'

class Irrigation5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @irrigation5 = irrigation5s(:one)
  end

  test "should get index" do
    get irrigation5s_url
    assert_response :success
  end

  test "should get new" do
    get new_irrigation5_url
    assert_response :success
  end

  test "should create irrigation5" do
    assert_difference('Irrigation5.count') do
      post irrigation5s_url, params: { irrigation5: { Created_Potential: @irrigation5.Created_Potential, Irrigation_Sources: @irrigation5.Irrigation_Sources, Ultimate_Potential: @irrigation5.Ultimate_Potential, Utilized_Potential: @irrigation5.Utilized_Potential } }
    end

    assert_redirected_to irrigation5_url(Irrigation5.last)
  end

  test "should show irrigation5" do
    get irrigation5_url(@irrigation5)
    assert_response :success
  end

  test "should get edit" do
    get edit_irrigation5_url(@irrigation5)
    assert_response :success
  end

  test "should update irrigation5" do
    patch irrigation5_url(@irrigation5), params: { irrigation5: { Created_Potential: @irrigation5.Created_Potential, Irrigation_Sources: @irrigation5.Irrigation_Sources, Ultimate_Potential: @irrigation5.Ultimate_Potential, Utilized_Potential: @irrigation5.Utilized_Potential } }
    assert_redirected_to irrigation5_url(@irrigation5)
  end

  test "should destroy irrigation5" do
    assert_difference('Irrigation5.count', -1) do
      delete irrigation5_url(@irrigation5)
    end

    assert_redirected_to irrigation5s_url
  end
end
