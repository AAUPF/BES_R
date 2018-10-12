require "application_system_test_case"

class BiharStartUpPoliciesTest < ApplicationSystemTestCase
  setup do
    @bihar_start_up_policy = bihar_start_up_policies(:one)
  end

  test "visiting the index" do
    visit bihar_start_up_policies_url
    assert_selector "h1", text: "Bihar Start Up Policies"
  end

  test "creating a Bihar start up policy" do
    visit bihar_start_up_policies_url
    click_on "New Bihar Start Up Policy"

    fill_in "Incubators", with: @bihar_start_up_policy.Incubators
    fill_in "Number Of Startups", with: @bihar_start_up_policy.Number_of_Startups
    click_on "Create Bihar start up policy"

    assert_text "Bihar start up policy was successfully created"
    click_on "Back"
  end

  test "updating a Bihar start up policy" do
    visit bihar_start_up_policies_url
    click_on "Edit", match: :first

    fill_in "Incubators", with: @bihar_start_up_policy.Incubators
    fill_in "Number Of Startups", with: @bihar_start_up_policy.Number_of_Startups
    click_on "Update Bihar start up policy"

    assert_text "Bihar start up policy was successfully updated"
    click_on "Back"
  end

  test "destroying a Bihar start up policy" do
    visit bihar_start_up_policies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bihar start up policy was successfully destroyed"
  end
end
