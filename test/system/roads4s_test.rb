require "application_system_test_case"

class Roads4sTest < ApplicationSystemTestCase
  setup do
    @roads4 = roads4s(:one)
  end

  test "visiting the index" do
    visit roads4s_url
    assert_selector "h1", text: "Roads4s"
  end

  test "creating a Roads4" do
    visit roads4s_url
    click_on "New Roads4"

    fill_in "Paved", with: @roads4.Paved
    fill_in "Percent Of Total", with: @roads4.Percent_of_Total
    fill_in "Percent Of Paved", with: @roads4.Percent_of_paved
    fill_in "Total", with: @roads4.Total
    fill_in "Type Of Road", with: @roads4.Type_of_Road
    fill_in "Year", with: @roads4.Year
    click_on "Create Roads4"

    assert_text "Roads4 was successfully created"
    click_on "Back"
  end

  test "updating a Roads4" do
    visit roads4s_url
    click_on "Edit", match: :first

    fill_in "Paved", with: @roads4.Paved
    fill_in "Percent Of Total", with: @roads4.Percent_of_Total
    fill_in "Percent Of Paved", with: @roads4.Percent_of_paved
    fill_in "Total", with: @roads4.Total
    fill_in "Type Of Road", with: @roads4.Type_of_Road
    fill_in "Year", with: @roads4.Year
    click_on "Update Roads4"

    assert_text "Roads4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Roads4" do
    visit roads4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roads4 was successfully destroyed"
  end
end
