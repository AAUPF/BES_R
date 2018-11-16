require "application_system_test_case"

class PanchayatiRaj1sTest < ApplicationSystemTestCase
  setup do
    @panchayati_raj1 = panchayati_raj1s(:one)
  end

  test "visiting the index" do
    visit panchayati_raj1s_url
    assert_selector "h1", text: "Panchayati Raj1s"
  end

  test "creating a Panchayati raj1" do
    visit panchayati_raj1s_url
    click_on "New Panchayati Raj1"

    fill_in "Average Number Of Members Per Panchayat", with: @panchayati_raj1.Average_Number_of_Members_per_Panchayat
    fill_in "Item", with: @panchayati_raj1.Item
    fill_in "Number", with: @panchayati_raj1.Number
    fill_in "Number Of Members Or Functionaries", with: @panchayati_raj1.Number_of_Members_or_Functionaries
    click_on "Create Panchayati raj1"

    assert_text "Panchayati raj1 was successfully created"
    click_on "Back"
  end

  test "updating a Panchayati raj1" do
    visit panchayati_raj1s_url
    click_on "Edit", match: :first

    fill_in "Average Number Of Members Per Panchayat", with: @panchayati_raj1.Average_Number_of_Members_per_Panchayat
    fill_in "Item", with: @panchayati_raj1.Item
    fill_in "Number", with: @panchayati_raj1.Number
    fill_in "Number Of Members Or Functionaries", with: @panchayati_raj1.Number_of_Members_or_Functionaries
    click_on "Update Panchayati raj1"

    assert_text "Panchayati raj1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Panchayati raj1" do
    visit panchayati_raj1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Panchayati raj1 was successfully destroyed"
  end
end
