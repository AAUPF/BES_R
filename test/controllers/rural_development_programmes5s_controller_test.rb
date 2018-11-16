require 'test_helper'

class RuralDevelopmentProgrammes5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rural_development_programmes5 = rural_development_programmes5s(:one)
  end

  test "should get index" do
    get rural_development_programmes5s_url
    assert_response :success
  end

  test "should get new" do
    get new_rural_development_programmes5_url
    assert_response :success
  end

  test "should create rural_development_programmes5" do
    assert_difference('RuralDevelopmentProgrammes5.count') do
      post rural_development_programmes5s_url, params: { rural_development_programmes5: { No_of_PDS_Outlets: @rural_development_programmes5.No_of_PDS_Outlets, Percentage_Share: @rural_development_programmes5.Percentage_Share, Social_Background_of_PDS_Dealers: @rural_development_programmes5.Social_Background_of_PDS_Dealers, Year: @rural_development_programmes5.Year } }
    end

    assert_redirected_to rural_development_programmes5_url(RuralDevelopmentProgrammes5.last)
  end

  test "should show rural_development_programmes5" do
    get rural_development_programmes5_url(@rural_development_programmes5)
    assert_response :success
  end

  test "should get edit" do
    get edit_rural_development_programmes5_url(@rural_development_programmes5)
    assert_response :success
  end

  test "should update rural_development_programmes5" do
    patch rural_development_programmes5_url(@rural_development_programmes5), params: { rural_development_programmes5: { No_of_PDS_Outlets: @rural_development_programmes5.No_of_PDS_Outlets, Percentage_Share: @rural_development_programmes5.Percentage_Share, Social_Background_of_PDS_Dealers: @rural_development_programmes5.Social_Background_of_PDS_Dealers, Year: @rural_development_programmes5.Year } }
    assert_redirected_to rural_development_programmes5_url(@rural_development_programmes5)
  end

  test "should destroy rural_development_programmes5" do
    assert_difference('RuralDevelopmentProgrammes5.count', -1) do
      delete rural_development_programmes5_url(@rural_development_programmes5)
    end

    assert_redirected_to rural_development_programmes5s_url
  end
end
