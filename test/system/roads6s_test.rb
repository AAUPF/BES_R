require "application_system_test_case"

class Roads6sTest < ApplicationSystemTestCase
  setup do
    @roads6 = roads6s(:one)
  end

  test "visiting the index" do
    visit roads6s_url
    assert_selector "h1", text: "Roads6s"
  end

  test "creating a Roads6" do
    visit roads6s_url
    click_on "New Roads6"

    fill_in "Expenditure On Nh Development", with: @roads6.Expenditure_on_NH_Development
    fill_in "Expenditure On Nh Maintenance", with: @roads6.Expenditure_on_NH_Maintenance
    fill_in "Indicator", with: @roads6.Indicator
    fill_in "Nh In Kms", with: @roads6.NH_in_kms
    fill_in "Total Expenditure On Nh", with: @roads6.Total_Expenditure_on_NH
    fill_in "Year", with: @roads6.Year
    click_on "Create Roads6"

    assert_text "Roads6 was successfully created"
    click_on "Back"
  end

  test "updating a Roads6" do
    visit roads6s_url
    click_on "Edit", match: :first

    fill_in "Expenditure On Nh Development", with: @roads6.Expenditure_on_NH_Development
    fill_in "Expenditure On Nh Maintenance", with: @roads6.Expenditure_on_NH_Maintenance
    fill_in "Indicator", with: @roads6.Indicator
    fill_in "Nh In Kms", with: @roads6.NH_in_kms
    fill_in "Total Expenditure On Nh", with: @roads6.Total_Expenditure_on_NH
    fill_in "Year", with: @roads6.Year
    click_on "Update Roads6"

    assert_text "Roads6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Roads6" do
    visit roads6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roads6 was successfully destroyed"
  end
end
