require 'test_helper'

class Health21sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health21 = health21s(:one)
  end

  test "should get index" do
    get health21s_url
    assert_response :success
  end

  test "should get new" do
    get new_health21_url
    assert_response :success
  end

  test "should create health21" do
    assert_difference('Health21.count') do
      post health21s_url, params: { health21: { Acute_Diarrheal_Disease: @health21.Acute_Diarrheal_Disease, Acute_Respiratory_Infection: @health21.Acute_Respiratory_Infection, Bacillary_Dysentery: @health21.Bacillary_Dysentery, Districts: @health21.Districts, Dogbite: @health21.Dogbite, Enteric_Fever: @health21.Enteric_Fever, Malaria: @health21.Malaria, Other_State_Specific_Disease: @health21.Other_State_Specific_Disease, PUO: @health21.PUO, Pneumonia: @health21.Pneumonia, Unusual_Syndromes_Not_Captured: @health21.Unusual_Syndromes_Not_Captured, Viral_Hepatitis: @health21.Viral_Hepatitis } }
    end

    assert_redirected_to health21_url(Health21.last)
  end

  test "should show health21" do
    get health21_url(@health21)
    assert_response :success
  end

  test "should get edit" do
    get edit_health21_url(@health21)
    assert_response :success
  end

  test "should update health21" do
    patch health21_url(@health21), params: { health21: { Acute_Diarrheal_Disease: @health21.Acute_Diarrheal_Disease, Acute_Respiratory_Infection: @health21.Acute_Respiratory_Infection, Bacillary_Dysentery: @health21.Bacillary_Dysentery, Districts: @health21.Districts, Dogbite: @health21.Dogbite, Enteric_Fever: @health21.Enteric_Fever, Malaria: @health21.Malaria, Other_State_Specific_Disease: @health21.Other_State_Specific_Disease, PUO: @health21.PUO, Pneumonia: @health21.Pneumonia, Unusual_Syndromes_Not_Captured: @health21.Unusual_Syndromes_Not_Captured, Viral_Hepatitis: @health21.Viral_Hepatitis } }
    assert_redirected_to health21_url(@health21)
  end

  test "should destroy health21" do
    assert_difference('Health21.count', -1) do
      delete health21_url(@health21)
    end

    assert_redirected_to health21s_url
  end
end
