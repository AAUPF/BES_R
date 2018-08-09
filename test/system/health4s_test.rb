require "application_system_test_case"

class Health4sTest < ApplicationSystemTestCase
  setup do
    @health4 = health4s(:one)
  end

  test "visiting the index" do
    visit health4s_url
    assert_selector "h1", text: "Health4s"
  end

  test "creating a Health4" do
    visit health4s_url
    click_on "New Health4"

    fill_in "Number Of Patients Visiting Government Hospitals Per Month", with: @health4.Number_of_patients_visiting_government_hospitals_per_month
    fill_in "Percentage Growth", with: @health4.Percentage_growth
    fill_in "Year", with: @health4.Year
    click_on "Create Health4"

    assert_text "Health4 was successfully created"
    click_on "Back"
  end

  test "updating a Health4" do
    visit health4s_url
    click_on "Edit", match: :first

    fill_in "Number Of Patients Visiting Government Hospitals Per Month", with: @health4.Number_of_patients_visiting_government_hospitals_per_month
    fill_in "Percentage Growth", with: @health4.Percentage_growth
    fill_in "Year", with: @health4.Year
    click_on "Update Health4"

    assert_text "Health4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health4" do
    visit health4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health4 was successfully destroyed"
  end
end
