require "application_system_test_case"

class Health2sTest < ApplicationSystemTestCase
  setup do
    @health2 = health2s(:one)
  end

  test "visiting the index" do
    visit health2s_url
    assert_selector "h1", text: "Health2s"
  end

  test "creating a Health2" do
    visit health2s_url
    click_on "New Health2"

    fill_in "Female", with: @health2.Female
    fill_in "Male", with: @health2.Male
    fill_in "Region", with: @health2.Region
    fill_in "Total", with: @health2.Total
    fill_in "Year", with: @health2.Year
    click_on "Create Health2"

    assert_text "Health2 was successfully created"
    click_on "Back"
  end

  test "updating a Health2" do
    visit health2s_url
    click_on "Edit", match: :first

    fill_in "Female", with: @health2.Female
    fill_in "Male", with: @health2.Male
    fill_in "Region", with: @health2.Region
    fill_in "Total", with: @health2.Total
    fill_in "Year", with: @health2.Year
    click_on "Update Health2"

    assert_text "Health2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health2" do
    visit health2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health2 was successfully destroyed"
  end
end
