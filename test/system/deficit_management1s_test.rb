require "application_system_test_case"

class DeficitManagement1sTest < ApplicationSystemTestCase
  setup do
    @deficit_management1 = deficit_management1s(:one)
  end

  test "visiting the index" do
    visit deficit_management1s_url
    assert_selector "h1", text: "Deficit Management1s"
  end

  test "creating a Deficit management1" do
    visit deficit_management1s_url
    click_on "New Deficit Management1"

    fill_in "Conventional Deficit Surplus", with: @deficit_management1.Conventional_Deficit_Surplus
    fill_in "Revenue Deficit Surplus", with: @deficit_management1.Revenue_Deficit_Surplus
    fill_in "State", with: @deficit_management1.State
    fill_in "Year", with: @deficit_management1.Year
    click_on "Create Deficit management1"

    assert_text "Deficit management1 was successfully created"
    click_on "Back"
  end

  test "updating a Deficit management1" do
    visit deficit_management1s_url
    click_on "Edit", match: :first

    fill_in "Conventional Deficit Surplus", with: @deficit_management1.Conventional_Deficit_Surplus
    fill_in "Revenue Deficit Surplus", with: @deficit_management1.Revenue_Deficit_Surplus
    fill_in "State", with: @deficit_management1.State
    fill_in "Year", with: @deficit_management1.Year
    click_on "Update Deficit management1"

    assert_text "Deficit management1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Deficit management1" do
    visit deficit_management1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deficit management1 was successfully destroyed"
  end
end
