require "application_system_test_case"

class AgroBasedIndustries2sTest < ApplicationSystemTestCase
  setup do
    @agro_based_industries2 = agro_based_industries2s(:one)
  end

  test "visiting the index" do
    visit agro_based_industries2s_url
    assert_selector "h1", text: "Agro Based Industries2s"
  end

  test "creating a Agro based industries2" do
    visit agro_based_industries2s_url
    click_on "New Agro Based Industries2"

    fill_in "Location Of Union Or Project", with: @agro_based_industries2.Location_of_Union_or_Project
    fill_in "Organised Societies", with: @agro_based_industries2.Organised_Societies
    fill_in "Registered Societies", with: @agro_based_industries2.Registered_Societies
    fill_in "Working Societies", with: @agro_based_industries2.Working_Societies
    fill_in "Year", with: @agro_based_industries2.Year
    click_on "Create Agro based industries2"

    assert_text "Agro based industries2 was successfully created"
    click_on "Back"
  end

  test "updating a Agro based industries2" do
    visit agro_based_industries2s_url
    click_on "Edit", match: :first

    fill_in "Location Of Union Or Project", with: @agro_based_industries2.Location_of_Union_or_Project
    fill_in "Organised Societies", with: @agro_based_industries2.Organised_Societies
    fill_in "Registered Societies", with: @agro_based_industries2.Registered_Societies
    fill_in "Working Societies", with: @agro_based_industries2.Working_Societies
    fill_in "Year", with: @agro_based_industries2.Year
    click_on "Update Agro based industries2"

    assert_text "Agro based industries2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agro based industries2" do
    visit agro_based_industries2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agro based industries2 was successfully destroyed"
  end
end
