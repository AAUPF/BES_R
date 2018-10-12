require "application_system_test_case"

class Tourism2sTest < ApplicationSystemTestCase
  setup do
    @tourism2 = tourism2s(:one)
  end

  test "visiting the index" do
    visit tourism2s_url
    assert_selector "h1", text: "Tourism2s"
  end

  test "creating a Tourism2" do
    visit tourism2s_url
    click_on "New Tourism2"

    fill_in "Domestic Tourists", with: @tourism2.Domestic_tourists
    fill_in "Foreign Tourists", with: @tourism2.Foreign_tourists
    fill_in "Total Tourists", with: @tourism2.Total_tourists
    fill_in "Year", with: @tourism2.Year
    click_on "Create Tourism2"

    assert_text "Tourism2 was successfully created"
    click_on "Back"
  end

  test "updating a Tourism2" do
    visit tourism2s_url
    click_on "Edit", match: :first

    fill_in "Domestic Tourists", with: @tourism2.Domestic_tourists
    fill_in "Foreign Tourists", with: @tourism2.Foreign_tourists
    fill_in "Total Tourists", with: @tourism2.Total_tourists
    fill_in "Year", with: @tourism2.Year
    click_on "Update Tourism2"

    assert_text "Tourism2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tourism2" do
    visit tourism2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tourism2 was successfully destroyed"
  end
end
