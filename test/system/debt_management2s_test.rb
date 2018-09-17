require "application_system_test_case"

class DebtManagement2sTest < ApplicationSystemTestCase
  setup do
    @debt_management2 = debt_management2s(:one)
  end

  test "visiting the index" do
    visit debt_management2s_url
    assert_selector "h1", text: "Debt Management2s"
  end

  test "creating a Debt management2" do
    visit debt_management2s_url
    click_on "New Debt Management2"

    fill_in "2015 16", with: @debt_management2.2015-16
    fill_in "2016 17", with: @debt_management2.2016-17
    fill_in "2017 From 2016", with: @debt_management2.2017_from_2016
    fill_in "31 03 17", with: @debt_management2.31_03_17
    fill_in "31 03 2016", with: @debt_management2.31_03_2016
    fill_in "31 03 2017", with: @debt_management2.31_03_2017
    fill_in "Sector", with: @debt_management2.Sector
    click_on "Create Debt management2"

    assert_text "Debt management2 was successfully created"
    click_on "Back"
  end

  test "updating a Debt management2" do
    visit debt_management2s_url
    click_on "Edit", match: :first

    fill_in "2015 16", with: @debt_management2.2015-16
    fill_in "2016 17", with: @debt_management2.2016-17
    fill_in "2017 From 2016", with: @debt_management2.2017_from_2016
    fill_in "31 03 17", with: @debt_management2.31_03_17
    fill_in "31 03 2016", with: @debt_management2.31_03_2016
    fill_in "31 03 2017", with: @debt_management2.31_03_2017
    fill_in "Sector", with: @debt_management2.Sector
    click_on "Update Debt management2"

    assert_text "Debt management2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Debt management2" do
    visit debt_management2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Debt management2 was successfully destroyed"
  end
end
