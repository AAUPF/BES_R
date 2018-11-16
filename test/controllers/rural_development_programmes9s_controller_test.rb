require 'test_helper'

class RuralDevelopmentProgrammes9sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rural_development_programmes9 = rural_development_programmes9s(:one)
  end

  test "should get index" do
    get rural_development_programmes9s_url
    assert_response :success
  end

  test "should get new" do
    get new_rural_development_programmes9_url
    assert_response :success
  end

  test "should create rural_development_programmes9" do
    assert_difference('RuralDevelopmentProgrammes9.count') do
      post rural_development_programmes9s_url, params: { rural_development_programmes9: { Dealers_belonging_to_BC_or_EBC: @rural_development_programmes9.Dealers_belonging_to_BC_or_EBC, Dealers_belonging_to_General: @rural_development_programmes9.Dealers_belonging_to_General, Dealers_belonging_to_Minority: @rural_development_programmes9.Dealers_belonging_to_Minority, Dealers_belonging_to_SC_or_ST: @rural_development_programmes9.Dealers_belonging_to_SC_or_ST, Dealers_belonging_to_Women: @rural_development_programmes9.Dealers_belonging_to_Women, Dealers_belonging_to_Women_or_Other_SHG: @rural_development_programmes9.Dealers_belonging_to_Women_or_Other_SHG, Dealers_from_Helper_Samiti_or_PACS_or_Samiti_of_ExArmy_Personnel: @rural_development_programmes9.Dealers_from_Helper_Samiti_or_PACS_or_Samiti_of_ExArmy_Personnel, Districts: @rural_development_programmes9.Districts, Number_of_Dealers: @rural_development_programmes9.Number_of_Dealers, Total: @rural_development_programmes9.Total } }
    end

    assert_redirected_to rural_development_programmes9_url(RuralDevelopmentProgrammes9.last)
  end

  test "should show rural_development_programmes9" do
    get rural_development_programmes9_url(@rural_development_programmes9)
    assert_response :success
  end

  test "should get edit" do
    get edit_rural_development_programmes9_url(@rural_development_programmes9)
    assert_response :success
  end

  test "should update rural_development_programmes9" do
    patch rural_development_programmes9_url(@rural_development_programmes9), params: { rural_development_programmes9: { Dealers_belonging_to_BC_or_EBC: @rural_development_programmes9.Dealers_belonging_to_BC_or_EBC, Dealers_belonging_to_General: @rural_development_programmes9.Dealers_belonging_to_General, Dealers_belonging_to_Minority: @rural_development_programmes9.Dealers_belonging_to_Minority, Dealers_belonging_to_SC_or_ST: @rural_development_programmes9.Dealers_belonging_to_SC_or_ST, Dealers_belonging_to_Women: @rural_development_programmes9.Dealers_belonging_to_Women, Dealers_belonging_to_Women_or_Other_SHG: @rural_development_programmes9.Dealers_belonging_to_Women_or_Other_SHG, Dealers_from_Helper_Samiti_or_PACS_or_Samiti_of_ExArmy_Personnel: @rural_development_programmes9.Dealers_from_Helper_Samiti_or_PACS_or_Samiti_of_ExArmy_Personnel, Districts: @rural_development_programmes9.Districts, Number_of_Dealers: @rural_development_programmes9.Number_of_Dealers, Total: @rural_development_programmes9.Total } }
    assert_redirected_to rural_development_programmes9_url(@rural_development_programmes9)
  end

  test "should destroy rural_development_programmes9" do
    assert_difference('RuralDevelopmentProgrammes9.count', -1) do
      delete rural_development_programmes9_url(@rural_development_programmes9)
    end

    assert_redirected_to rural_development_programmes9s_url
  end
end
