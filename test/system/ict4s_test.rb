require "application_system_test_case"

class Ict4sTest < ApplicationSystemTestCase
  setup do
    @ict4 = ict4s(:one)
  end

  test "visiting the index" do
    visit ict4s_url
    assert_selector "h1", text: "Ict4s"
  end

  test "creating a Ict4" do
    visit ict4s_url
    click_on "New Ict4"

    fill_in "Indicator", with: @ict4.Indicator
    fill_in "Rural", with: @ict4.Rural
    fill_in "Rural Percentage", with: @ict4.Rural_Percentage
    fill_in "Share In All India", with: @ict4.Share_in_all_India
    fill_in "State", with: @ict4.State
    fill_in "Total", with: @ict4.Total
    fill_in "Urban", with: @ict4.Urban
    fill_in "Urban Percentage", with: @ict4.Urban_Percentage
    click_on "Create Ict4"

    assert_text "Ict4 was successfully created"
    click_on "Back"
  end

  test "updating a Ict4" do
    visit ict4s_url
    click_on "Edit", match: :first

    fill_in "Indicator", with: @ict4.Indicator
    fill_in "Rural", with: @ict4.Rural
    fill_in "Rural Percentage", with: @ict4.Rural_Percentage
    fill_in "Share In All India", with: @ict4.Share_in_all_India
    fill_in "State", with: @ict4.State
    fill_in "Total", with: @ict4.Total
    fill_in "Urban", with: @ict4.Urban
    fill_in "Urban Percentage", with: @ict4.Urban_Percentage
    click_on "Update Ict4"

    assert_text "Ict4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Ict4" do
    visit ict4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ict4 was successfully destroyed"
  end
end
