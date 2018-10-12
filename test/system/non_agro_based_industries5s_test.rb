require "application_system_test_case"

class NonAgroBasedIndustries5sTest < ApplicationSystemTestCase
  setup do
    @non_agro_based_industries5 = non_agro_based_industries5s(:one)
  end

  test "visiting the index" do
    visit non_agro_based_industries5s_url
    assert_selector "h1", text: "Non Agro Based Industries5s"
  end

  test "creating a Non agro based industries5" do
    visit non_agro_based_industries5s_url
    click_on "New Non Agro Based Industries5"

    fill_in "Agencies", with: @non_agro_based_industries5.Agencies
    fill_in "Dic", with: @non_agro_based_industries5.DIC
    fill_in "Dic Percentage", with: @non_agro_based_industries5.DIC_Percentage
    fill_in "Indicators", with: @non_agro_based_industries5.Indicators
    fill_in "Kvic", with: @non_agro_based_industries5.KVIC
    fill_in "Kvic Percentage", with: @non_agro_based_industries5.KVIC_Percentage
    fill_in "Kvi Board", with: @non_agro_based_industries5.KVI_Board
    fill_in "Kvi Board Percentage", with: @non_agro_based_industries5.KVI_Board_Percentage
    fill_in "Total", with: @non_agro_based_industries5.Total
    fill_in "Total Percentage", with: @non_agro_based_industries5.Total_Percentage
    fill_in "Year", with: @non_agro_based_industries5.Year
    click_on "Create Non agro based industries5"

    assert_text "Non agro based industries5 was successfully created"
    click_on "Back"
  end

  test "updating a Non agro based industries5" do
    visit non_agro_based_industries5s_url
    click_on "Edit", match: :first

    fill_in "Agencies", with: @non_agro_based_industries5.Agencies
    fill_in "Dic", with: @non_agro_based_industries5.DIC
    fill_in "Dic Percentage", with: @non_agro_based_industries5.DIC_Percentage
    fill_in "Indicators", with: @non_agro_based_industries5.Indicators
    fill_in "Kvic", with: @non_agro_based_industries5.KVIC
    fill_in "Kvic Percentage", with: @non_agro_based_industries5.KVIC_Percentage
    fill_in "Kvi Board", with: @non_agro_based_industries5.KVI_Board
    fill_in "Kvi Board Percentage", with: @non_agro_based_industries5.KVI_Board_Percentage
    fill_in "Total", with: @non_agro_based_industries5.Total
    fill_in "Total Percentage", with: @non_agro_based_industries5.Total_Percentage
    fill_in "Year", with: @non_agro_based_industries5.Year
    click_on "Update Non agro based industries5"

    assert_text "Non agro based industries5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Non agro based industries5" do
    visit non_agro_based_industries5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Non agro based industries5 was successfully destroyed"
  end
end
