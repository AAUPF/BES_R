require "application_system_test_case"

class LabourResourceAndWelfare2sTest < ApplicationSystemTestCase
  setup do
    @labour_resource_and_welfare2 = labour_resource_and_welfare2s(:one)
  end

  test "visiting the index" do
    visit labour_resource_and_welfare2s_url
    assert_selector "h1", text: "Labour Resource And Welfare2s"
  end

  test "creating a Labour resource and welfare2" do
    visit labour_resource_and_welfare2s_url
    click_on "New Labour Resource And Welfare2"

    fill_in "Budget Outlay", with: @labour_resource_and_welfare2.Budget_outlay
    fill_in "Financial Achievement", with: @labour_resource_and_welfare2.Financial_Achievement
    fill_in "Programme", with: @labour_resource_and_welfare2.Programme
    fill_in "Year", with: @labour_resource_and_welfare2.Year
    click_on "Create Labour resource and welfare2"

    assert_text "Labour resource and welfare2 was successfully created"
    click_on "Back"
  end

  test "updating a Labour resource and welfare2" do
    visit labour_resource_and_welfare2s_url
    click_on "Edit", match: :first

    fill_in "Budget Outlay", with: @labour_resource_and_welfare2.Budget_outlay
    fill_in "Financial Achievement", with: @labour_resource_and_welfare2.Financial_Achievement
    fill_in "Programme", with: @labour_resource_and_welfare2.Programme
    fill_in "Year", with: @labour_resource_and_welfare2.Year
    click_on "Update Labour resource and welfare2"

    assert_text "Labour resource and welfare2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Labour resource and welfare2" do
    visit labour_resource_and_welfare2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Labour resource and welfare2 was successfully destroyed"
  end
end
