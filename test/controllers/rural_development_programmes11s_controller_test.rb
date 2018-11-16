require 'test_helper'

class RuralDevelopmentProgrammes11sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rural_development_programmes11 = rural_development_programmes11s(:one)
  end

  test "should get index" do
    get rural_development_programmes11s_url
    assert_response :success
  end

  test "should get new" do
    get new_rural_development_programmes11_url
    assert_response :success
  end

  test "should create rural_development_programmes11" do
    assert_difference('RuralDevelopmentProgrammes11.count') do
      post rural_development_programmes11s_url, params: { rural_development_programmes11: { Placed: @rural_development_programmes11.Placed, Programme: @rural_development_programmes11.Programme, Trained: @rural_development_programmes11.Trained } }
    end

    assert_redirected_to rural_development_programmes11_url(RuralDevelopmentProgrammes11.last)
  end

  test "should show rural_development_programmes11" do
    get rural_development_programmes11_url(@rural_development_programmes11)
    assert_response :success
  end

  test "should get edit" do
    get edit_rural_development_programmes11_url(@rural_development_programmes11)
    assert_response :success
  end

  test "should update rural_development_programmes11" do
    patch rural_development_programmes11_url(@rural_development_programmes11), params: { rural_development_programmes11: { Placed: @rural_development_programmes11.Placed, Programme: @rural_development_programmes11.Programme, Trained: @rural_development_programmes11.Trained } }
    assert_redirected_to rural_development_programmes11_url(@rural_development_programmes11)
  end

  test "should destroy rural_development_programmes11" do
    assert_difference('RuralDevelopmentProgrammes11.count', -1) do
      delete rural_development_programmes11_url(@rural_development_programmes11)
    end

    assert_redirected_to rural_development_programmes11s_url
  end
end
