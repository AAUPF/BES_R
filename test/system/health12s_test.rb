require "application_system_test_case"

class Health12sTest < ApplicationSystemTestCase
  setup do
    @health12 = health12s(:one)
  end

  test "visiting the index" do
    visit health12s_url
    assert_selector "h1", text: "Health12s"
  end

  test "creating a Health12" do
    visit health12s_url
    click_on "New Health12"

    fill_in "Fund Disbursed", with: @health12.Fund_Disbursed
    fill_in "Nrhm", with: @health12.NRHM
    fill_in "Year", with: @health12.Year
    click_on "Create Health12"

    assert_text "Health12 was successfully created"
    click_on "Back"
  end

  test "updating a Health12" do
    visit health12s_url
    click_on "Edit", match: :first

    fill_in "Fund Disbursed", with: @health12.Fund_Disbursed
    fill_in "Nrhm", with: @health12.NRHM
    fill_in "Year", with: @health12.Year
    click_on "Update Health12"

    assert_text "Health12 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health12" do
    visit health12s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health12 was successfully destroyed"
  end
end
