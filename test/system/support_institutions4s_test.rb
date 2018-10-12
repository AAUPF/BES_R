require "application_system_test_case"

class SupportInstitutions4sTest < ApplicationSystemTestCase
  setup do
    @support_institutions4 = support_institutions4s(:one)
  end

  test "visiting the index" do
    visit support_institutions4s_url
    assert_selector "h1", text: "Support Institutions4s"
  end

  test "creating a Support institutions4" do
    visit support_institutions4s_url
    click_on "New Support Institutions4"

    fill_in "Land Reserved For Infrastructure Administrative Blocks Roads Etc", with: @support_institutions4.Land_Reserved_for_Infrastructure_Administrative_Blocks_Roads_etc
    fill_in "Litigated Land", with: @support_institutions4.Litigated_land
    fill_in "Regional Office", with: @support_institutions4.Regional_Office
    fill_in "Total Acquired Constructed Sheds", with: @support_institutions4.Total_Acquired_Constructed_Sheds
    fill_in "Total Acquired Land", with: @support_institutions4.Total_Acquired_Land
    fill_in "Total Allotted Constructed Sheds", with: @support_institutions4.Total_Allotted_Constructed_Sheds
    fill_in "Total Allotted Land", with: @support_institutions4.Total_Allotted_Land
    fill_in "Total Vacant Constructed Sheds Allottable", with: @support_institutions4.Total_Vacant_Constructed_Sheds_Allottable
    fill_in "Total Vacant Land Allottable", with: @support_institutions4.Total_Vacant_Land_Allottable
    click_on "Create Support institutions4"

    assert_text "Support institutions4 was successfully created"
    click_on "Back"
  end

  test "updating a Support institutions4" do
    visit support_institutions4s_url
    click_on "Edit", match: :first

    fill_in "Land Reserved For Infrastructure Administrative Blocks Roads Etc", with: @support_institutions4.Land_Reserved_for_Infrastructure_Administrative_Blocks_Roads_etc
    fill_in "Litigated Land", with: @support_institutions4.Litigated_land
    fill_in "Regional Office", with: @support_institutions4.Regional_Office
    fill_in "Total Acquired Constructed Sheds", with: @support_institutions4.Total_Acquired_Constructed_Sheds
    fill_in "Total Acquired Land", with: @support_institutions4.Total_Acquired_Land
    fill_in "Total Allotted Constructed Sheds", with: @support_institutions4.Total_Allotted_Constructed_Sheds
    fill_in "Total Allotted Land", with: @support_institutions4.Total_Allotted_Land
    fill_in "Total Vacant Constructed Sheds Allottable", with: @support_institutions4.Total_Vacant_Constructed_Sheds_Allottable
    fill_in "Total Vacant Land Allottable", with: @support_institutions4.Total_Vacant_Land_Allottable
    click_on "Update Support institutions4"

    assert_text "Support institutions4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Support institutions4" do
    visit support_institutions4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Support institutions4 was successfully destroyed"
  end
end
