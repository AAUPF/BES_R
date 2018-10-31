require "application_system_test_case"

class Roads5sTest < ApplicationSystemTestCase
  setup do
    @roads5 = roads5s(:one)
  end

  test "visiting the index" do
    visit roads5s_url
    assert_selector "h1", text: "Roads5s"
  end

  test "creating a Roads5" do
    visit roads5s_url
    click_on "New Roads5"

    fill_in "Category Of Road", with: @roads5.Category_of_Road
    fill_in "Indicator", with: @roads5.Indicator
    fill_in "Length In Kms", with: @roads5.Length_in_kms
    fill_in "Percentage Share", with: @roads5.Percentage_share
    click_on "Create Roads5"

    assert_text "Roads5 was successfully created"
    click_on "Back"
  end

  test "updating a Roads5" do
    visit roads5s_url
    click_on "Edit", match: :first

    fill_in "Category Of Road", with: @roads5.Category_of_Road
    fill_in "Indicator", with: @roads5.Indicator
    fill_in "Length In Kms", with: @roads5.Length_in_kms
    fill_in "Percentage Share", with: @roads5.Percentage_share
    click_on "Update Roads5"

    assert_text "Roads5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Roads5" do
    visit roads5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roads5 was successfully destroyed"
  end
end
