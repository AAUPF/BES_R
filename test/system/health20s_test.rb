require "application_system_test_case"

class Health20sTest < ApplicationSystemTestCase
  setup do
    @health20 = health20s(:one)
  end

  test "visiting the index" do
    visit health20s_url
    assert_selector "h1", text: "Health20s"
  end

  test "creating a Health20" do
    visit health20s_url
    click_on "New Health20"

    fill_in "Districts", with: @health20.Districts
    fill_in "Institutional Deliveries", with: @health20.Institutional_Deliveries
    fill_in "Year", with: @health20.Year
    click_on "Create Health20"

    assert_text "Health20 was successfully created"
    click_on "Back"
  end

  test "updating a Health20" do
    visit health20s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @health20.Districts
    fill_in "Institutional Deliveries", with: @health20.Institutional_Deliveries
    fill_in "Year", with: @health20.Year
    click_on "Update Health20"

    assert_text "Health20 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health20" do
    visit health20s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health20 was successfully destroyed"
  end
end
