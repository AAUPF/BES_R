require "application_system_test_case"

class Generation1sTest < ApplicationSystemTestCase
  setup do
    @generation1 = generation1s(:one)
  end

  test "visiting the index" do
    visit generation1s_url
    assert_selector "h1", text: "Generation1s"
  end

  test "creating a Generation1" do
    visit generation1s_url
    click_on "New Generation1"

    fill_in "Grand Total", with: @generation1.Grand_Total
    fill_in "Hydro Renewable", with: @generation1.Hydro_Renewable
    fill_in "Nuclear", with: @generation1.Nuclear
    fill_in "Res Mnre", with: @generation1.RES_MNRE
    fill_in "Sector", with: @generation1.Sector
    fill_in "Thermal Coal", with: @generation1.Thermal_Coal
    fill_in "Thermal Diesel", with: @generation1.Thermal_Diesel
    fill_in "Thermal Gas", with: @generation1.Thermal_Gas
    fill_in "Thermal Total", with: @generation1.Thermal_Total
    click_on "Create Generation1"

    assert_text "Generation1 was successfully created"
    click_on "Back"
  end

  test "updating a Generation1" do
    visit generation1s_url
    click_on "Edit", match: :first

    fill_in "Grand Total", with: @generation1.Grand_Total
    fill_in "Hydro Renewable", with: @generation1.Hydro_Renewable
    fill_in "Nuclear", with: @generation1.Nuclear
    fill_in "Res Mnre", with: @generation1.RES_MNRE
    fill_in "Sector", with: @generation1.Sector
    fill_in "Thermal Coal", with: @generation1.Thermal_Coal
    fill_in "Thermal Diesel", with: @generation1.Thermal_Diesel
    fill_in "Thermal Gas", with: @generation1.Thermal_Gas
    fill_in "Thermal Total", with: @generation1.Thermal_Total
    click_on "Update Generation1"

    assert_text "Generation1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Generation1" do
    visit generation1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Generation1 was successfully destroyed"
  end
end
