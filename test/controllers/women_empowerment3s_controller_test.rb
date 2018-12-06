require 'test_helper'

class WomenEmpowerment3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @women_empowerment3 = women_empowerment3s(:one)
  end

  test "should get index" do
    get women_empowerment3s_url
    assert_response :success
  end

  test "should get new" do
    get new_women_empowerment3_url
    assert_response :success
  end

  test "should create women_empowerment3" do
    assert_difference('WomenEmpowerment3.count') do
      post women_empowerment3s_url, params: { women_empowerment3: { Lakshmibai_Social_Security_Pension_Scheme: @women_empowerment3.Lakshmibai_Social_Security_Pension_Scheme, Mukhyamantri_Kanya_Suraksha_Yojana: @women_empowerment3.Mukhyamantri_Kanya_Suraksha_Yojana, Mukhyamantri_Kanya_Vivah_Yojana: @women_empowerment3.Mukhyamantri_Kanya_Vivah_Yojana, Nari_Shakti_Yojana: @women_empowerment3.Nari_Shakti_Yojana, Total: @women_empowerment3.Total, Year: @women_empowerment3.Year } }
    end

    assert_redirected_to women_empowerment3_url(WomenEmpowerment3.last)
  end

  test "should show women_empowerment3" do
    get women_empowerment3_url(@women_empowerment3)
    assert_response :success
  end

  test "should get edit" do
    get edit_women_empowerment3_url(@women_empowerment3)
    assert_response :success
  end

  test "should update women_empowerment3" do
    patch women_empowerment3_url(@women_empowerment3), params: { women_empowerment3: { Lakshmibai_Social_Security_Pension_Scheme: @women_empowerment3.Lakshmibai_Social_Security_Pension_Scheme, Mukhyamantri_Kanya_Suraksha_Yojana: @women_empowerment3.Mukhyamantri_Kanya_Suraksha_Yojana, Mukhyamantri_Kanya_Vivah_Yojana: @women_empowerment3.Mukhyamantri_Kanya_Vivah_Yojana, Nari_Shakti_Yojana: @women_empowerment3.Nari_Shakti_Yojana, Total: @women_empowerment3.Total, Year: @women_empowerment3.Year } }
    assert_redirected_to women_empowerment3_url(@women_empowerment3)
  end

  test "should destroy women_empowerment3" do
    assert_difference('WomenEmpowerment3.count', -1) do
      delete women_empowerment3_url(@women_empowerment3)
    end

    assert_redirected_to women_empowerment3s_url
  end
end
