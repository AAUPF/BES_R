require 'test_helper'

class RuralDevelopmentProgrammes1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rural_development_programmes1 = rural_development_programmes1s(:one)
  end

  test "should get index" do
    get rural_development_programmes1s_url
    assert_response :success
  end

  test "should get new" do
    get new_rural_development_programmes1_url
    assert_response :success
  end

  test "should create rural_development_programmes1" do
    assert_difference('RuralDevelopmentProgrammes1.count') do
      post rural_development_programmes1s_url, params: { rural_development_programmes1: { Items: @rural_development_programmes1.Items, Progress: @rural_development_programmes1.Progress, Year: @rural_development_programmes1.Year } }
    end

    assert_redirected_to rural_development_programmes1_url(RuralDevelopmentProgrammes1.last)
  end

  test "should show rural_development_programmes1" do
    get rural_development_programmes1_url(@rural_development_programmes1)
    assert_response :success
  end

  test "should get edit" do
    get edit_rural_development_programmes1_url(@rural_development_programmes1)
    assert_response :success
  end

  test "should update rural_development_programmes1" do
    patch rural_development_programmes1_url(@rural_development_programmes1), params: { rural_development_programmes1: { Items: @rural_development_programmes1.Items, Progress: @rural_development_programmes1.Progress, Year: @rural_development_programmes1.Year } }
    assert_redirected_to rural_development_programmes1_url(@rural_development_programmes1)
  end

  test "should destroy rural_development_programmes1" do
    assert_difference('RuralDevelopmentProgrammes1.count', -1) do
      delete rural_development_programmes1_url(@rural_development_programmes1)
    end

    assert_redirected_to rural_development_programmes1s_url
  end
end
