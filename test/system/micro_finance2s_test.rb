require "application_system_test_case"

class MicroFinance2sTest < ApplicationSystemTestCase
  setup do
    @micro_finance2 = micro_finance2s(:one)
  end

  test "visiting the index" do
    visit micro_finance2s_url
    assert_selector "h1", text: "Micro Finance2s"
  end

  test "creating a Micro finance2" do
    visit micro_finance2s_url
    click_on "New Micro Finance2"

    fill_in "Indicators", with: @micro_finance2.Indicators
    fill_in "Mar 14", with: @micro_finance2.Mar-14
    fill_in "Mar 15", with: @micro_finance2.Mar-15
    fill_in "Mar 16", with: @micro_finance2.Mar-16
    fill_in "Mar 17", with: @micro_finance2.Mar-17
    click_on "Create Micro finance2"

    assert_text "Micro finance2 was successfully created"
    click_on "Back"
  end

  test "updating a Micro finance2" do
    visit micro_finance2s_url
    click_on "Edit", match: :first

    fill_in "Indicators", with: @micro_finance2.Indicators
    fill_in "Mar 14", with: @micro_finance2.Mar-14
    fill_in "Mar 15", with: @micro_finance2.Mar-15
    fill_in "Mar 16", with: @micro_finance2.Mar-16
    fill_in "Mar 17", with: @micro_finance2.Mar-17
    click_on "Update Micro finance2"

    assert_text "Micro finance2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Micro finance2" do
    visit micro_finance2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Micro finance2 was successfully destroyed"
  end
end
