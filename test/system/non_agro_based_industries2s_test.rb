require "application_system_test_case"

class NonAgroBasedIndustries2sTest < ApplicationSystemTestCase
  setup do
    @non_agro_based_industries2 = non_agro_based_industries2s(:one)
  end

  test "visiting the index" do
    visit non_agro_based_industries2s_url
    assert_selector "h1", text: "Non Agro Based Industries2s"
  end

  test "creating a Non agro based industries2" do
    visit non_agro_based_industries2s_url
    click_on "New Non Agro Based Industries2"

    fill_in "Districts", with: @non_agro_based_industries2.Districts
    fill_in "Handlooms On Which Uid No Has Been Engraved", with: @non_agro_based_industries2.Handlooms_on_which_UID_No_has_been_engraved
    fill_in "Pati Looms On Which Uid No Has Been Engraved", with: @non_agro_based_industries2.Pati_looms_on_which_UID_No_has_been_engraved
    fill_in "Sanctioned Amount In Rs Lakh", with: @non_agro_based_industries2.Sanctioned_amount_in_Rs_lakh
    click_on "Create Non agro based industries2"

    assert_text "Non agro based industries2 was successfully created"
    click_on "Back"
  end

  test "updating a Non agro based industries2" do
    visit non_agro_based_industries2s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @non_agro_based_industries2.Districts
    fill_in "Handlooms On Which Uid No Has Been Engraved", with: @non_agro_based_industries2.Handlooms_on_which_UID_No_has_been_engraved
    fill_in "Pati Looms On Which Uid No Has Been Engraved", with: @non_agro_based_industries2.Pati_looms_on_which_UID_No_has_been_engraved
    fill_in "Sanctioned Amount In Rs Lakh", with: @non_agro_based_industries2.Sanctioned_amount_in_Rs_lakh
    click_on "Update Non agro based industries2"

    assert_text "Non agro based industries2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Non agro based industries2" do
    visit non_agro_based_industries2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Non agro based industries2 was successfully destroyed"
  end
end
