require "application_system_test_case"

class LabourResourceAndWelfare1sTest < ApplicationSystemTestCase
  setup do
    @labour_resource_and_welfare1 = labour_resource_and_welfare1s(:one)
  end

  test "visiting the index" do
    visit labour_resource_and_welfare1s_url
    assert_selector "h1", text: "Labour Resource And Welfare1s"
  end

  test "creating a Labour resource and welfare1" do
    visit labour_resource_and_welfare1s_url
    click_on "New Labour Resource And Welfare1"

    fill_in "Agricultural Labourers", with: @labour_resource_and_welfare1.Agricultural_Labourers
    fill_in "Cultivators", with: @labour_resource_and_welfare1.Cultivators
    fill_in "Household Industry Workers", with: @labour_resource_and_welfare1.Household_Industry_Workers
    fill_in "Other Workers", with: @labour_resource_and_welfare1.Other_Workers
    fill_in "State", with: @labour_resource_and_welfare1.State
    fill_in "Total", with: @labour_resource_and_welfare1.Total
    fill_in "Total Number Of Workers", with: @labour_resource_and_welfare1.Total_Number_of_Workers
    click_on "Create Labour resource and welfare1"

    assert_text "Labour resource and welfare1 was successfully created"
    click_on "Back"
  end

  test "updating a Labour resource and welfare1" do
    visit labour_resource_and_welfare1s_url
    click_on "Edit", match: :first

    fill_in "Agricultural Labourers", with: @labour_resource_and_welfare1.Agricultural_Labourers
    fill_in "Cultivators", with: @labour_resource_and_welfare1.Cultivators
    fill_in "Household Industry Workers", with: @labour_resource_and_welfare1.Household_Industry_Workers
    fill_in "Other Workers", with: @labour_resource_and_welfare1.Other_Workers
    fill_in "State", with: @labour_resource_and_welfare1.State
    fill_in "Total", with: @labour_resource_and_welfare1.Total
    fill_in "Total Number Of Workers", with: @labour_resource_and_welfare1.Total_Number_of_Workers
    click_on "Update Labour resource and welfare1"

    assert_text "Labour resource and welfare1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Labour resource and welfare1" do
    visit labour_resource_and_welfare1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Labour resource and welfare1 was successfully destroyed"
  end
end
