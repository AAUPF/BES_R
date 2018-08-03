require "application_system_test_case"

class Irrigation4sTest < ApplicationSystemTestCase
  setup do
    @irrigation4 = irrigation4s(:one)
  end

  test "visiting the index" do
    visit irrigation4s_url
    assert_selector "h1", text: "Irrigation4s"
  end

  test "creating a Irrigation4" do
    visit irrigation4s_url
    click_on "New Irrigation4"

    fill_in "Applied For Registration", with: @irrigation4.Applied_for_Registration
    fill_in "Management Of Irrigation System Transferred", with: @irrigation4.Management_of_irrigation_System_Transferred
    fill_in "Societies Ready For Transfer Of System", with: @irrigation4.Societies_ready_for_transfer_of_system
    fill_in "Status", with: @irrigation4.Status
    fill_in "Total", with: @irrigation4.Total
    fill_in "Under The Process Of Motivation", with: @irrigation4.Under_the_process_of_motivation
    click_on "Create Irrigation4"

    assert_text "Irrigation4 was successfully created"
    click_on "Back"
  end

  test "updating a Irrigation4" do
    visit irrigation4s_url
    click_on "Edit", match: :first

    fill_in "Applied For Registration", with: @irrigation4.Applied_for_Registration
    fill_in "Management Of Irrigation System Transferred", with: @irrigation4.Management_of_irrigation_System_Transferred
    fill_in "Societies Ready For Transfer Of System", with: @irrigation4.Societies_ready_for_transfer_of_system
    fill_in "Status", with: @irrigation4.Status
    fill_in "Total", with: @irrigation4.Total
    fill_in "Under The Process Of Motivation", with: @irrigation4.Under_the_process_of_motivation
    click_on "Update Irrigation4"

    assert_text "Irrigation4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Irrigation4" do
    visit irrigation4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Irrigation4 was successfully destroyed"
  end
end
