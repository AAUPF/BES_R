require "application_system_test_case"

class Health19sTest < ApplicationSystemTestCase
  setup do
    @health19 = health19s(:one)
  end

  test "visiting the index" do
    visit health19s_url
    assert_selector "h1", text: "Health19s"
  end

  test "creating a Health19" do
    visit health19s_url
    click_on "New Health19"

    fill_in "Districts", with: @health19.Districts
    fill_in "Selection", with: @health19.Selection
    fill_in "Target", with: @health19.Target
    fill_in "Year", with: @health19.Year
    click_on "Create Health19"

    assert_text "Health19 was successfully created"
    click_on "Back"
  end

  test "updating a Health19" do
    visit health19s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @health19.Districts
    fill_in "Selection", with: @health19.Selection
    fill_in "Target", with: @health19.Target
    fill_in "Year", with: @health19.Year
    click_on "Update Health19"

    assert_text "Health19 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health19" do
    visit health19s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health19 was successfully destroyed"
  end
end
