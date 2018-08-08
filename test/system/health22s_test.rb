require "application_system_test_case"

class Health22sTest < ApplicationSystemTestCase
  setup do
    @health22 = health22s(:one)
  end

  test "visiting the index" do
    visit health22s_url
    assert_selector "h1", text: "Health22s"
  end

  test "creating a Health22" do
    visit health22s_url
    click_on "New Health22"

    fill_in "Districts", with: @health22.Districts
    fill_in "Nrhm Total", with: @health22.NRHM_Total
    fill_in "Year", with: @health22.Year
    click_on "Create Health22"

    assert_text "Health22 was successfully created"
    click_on "Back"
  end

  test "updating a Health22" do
    visit health22s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @health22.Districts
    fill_in "Nrhm Total", with: @health22.NRHM_Total
    fill_in "Year", with: @health22.Year
    click_on "Update Health22"

    assert_text "Health22 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health22" do
    visit health22s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health22 was successfully destroyed"
  end
end
