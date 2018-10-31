require "application_system_test_case"

class SupportInstitutions3sTest < ApplicationSystemTestCase
  setup do
    @support_institutions3 = support_institutions3s(:one)
  end

  test "visiting the index" do
    visit support_institutions3s_url
    assert_selector "h1", text: "Support Institutions3s"
  end

  test "creating a Support institutions3" do
    visit support_institutions3s_url
    click_on "New Support Institutions3"

    fill_in "Number Of Units Closed In Cancellation Process", with: @support_institutions3.Number_of_Units_Closed_in_Cancellation_Process
    fill_in "Number Of Units Which Have Not Started Construction", with: @support_institutions3.Number_of_Units_which_have_not_started_Construction
    fill_in "Number Of Working Units", with: @support_institutions3.Number_of_Working_Units
    fill_in "Number Of Working Units Under Construction", with: @support_institutions3.Number_of_Working_Units_under_Construction
    fill_in "Regional Office", with: @support_institutions3.Regional_Office
    fill_in "Total Existing Units", with: @support_institutions3.Total_existing_Units
    click_on "Create Support institutions3"

    assert_text "Support institutions3 was successfully created"
    click_on "Back"
  end

  test "updating a Support institutions3" do
    visit support_institutions3s_url
    click_on "Edit", match: :first

    fill_in "Number Of Units Closed In Cancellation Process", with: @support_institutions3.Number_of_Units_Closed_in_Cancellation_Process
    fill_in "Number Of Units Which Have Not Started Construction", with: @support_institutions3.Number_of_Units_which_have_not_started_Construction
    fill_in "Number Of Working Units", with: @support_institutions3.Number_of_Working_Units
    fill_in "Number Of Working Units Under Construction", with: @support_institutions3.Number_of_Working_Units_under_Construction
    fill_in "Regional Office", with: @support_institutions3.Regional_Office
    fill_in "Total Existing Units", with: @support_institutions3.Total_existing_Units
    click_on "Update Support institutions3"

    assert_text "Support institutions3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Support institutions3" do
    visit support_institutions3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Support institutions3 was successfully destroyed"
  end
end
