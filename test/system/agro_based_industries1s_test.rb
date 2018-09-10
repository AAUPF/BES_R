require "application_system_test_case"

class AgroBasedIndustries1sTest < ApplicationSystemTestCase
  setup do
    @agro_based_industries1 = agro_based_industries1s(:one)
  end

  test "visiting the index" do
    visit agro_based_industries1s_url
    assert_selector "h1", text: "Agro Based Industries1s"
  end

  test "creating a Agro based industries1" do
    visit agro_based_industries1s_url
    click_on "New Agro Based Industries1"

    fill_in "Name Of Sugar Mill", with: @agro_based_industries1.Name_of_Sugar_Mill
    fill_in "Recovery Percentage", with: @agro_based_industries1.Recovery_Percentage
    fill_in "Sugar Produced", with: @agro_based_industries1.Sugar_Produced
    fill_in "Sugarcane Crushed", with: @agro_based_industries1.Sugarcane_Crushed
    fill_in "Year", with: @agro_based_industries1.Year
    click_on "Create Agro based industries1"

    assert_text "Agro based industries1 was successfully created"
    click_on "Back"
  end

  test "updating a Agro based industries1" do
    visit agro_based_industries1s_url
    click_on "Edit", match: :first

    fill_in "Name Of Sugar Mill", with: @agro_based_industries1.Name_of_Sugar_Mill
    fill_in "Recovery Percentage", with: @agro_based_industries1.Recovery_Percentage
    fill_in "Sugar Produced", with: @agro_based_industries1.Sugar_Produced
    fill_in "Sugarcane Crushed", with: @agro_based_industries1.Sugarcane_Crushed
    fill_in "Year", with: @agro_based_industries1.Year
    click_on "Update Agro based industries1"

    assert_text "Agro based industries1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agro based industries1" do
    visit agro_based_industries1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agro based industries1 was successfully destroyed"
  end
end
