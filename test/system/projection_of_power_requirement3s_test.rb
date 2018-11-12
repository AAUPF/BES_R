require "application_system_test_case"

class ProjectionOfPowerRequirement3sTest < ApplicationSystemTestCase
  setup do
    @projection_of_power_requirement3 = projection_of_power_requirement3s(:one)
  end

  test "visiting the index" do
    visit projection_of_power_requirement3s_url
    assert_selector "h1", text: "Projection Of Power Requirement3s"
  end

  test "creating a Projection of power requirement3" do
    visit projection_of_power_requirement3s_url
    click_on "New Projection Of Power Requirement3"

    fill_in "2017 18", with: @projection_of_power_requirement3.2017-18
    fill_in "2018 19", with: @projection_of_power_requirement3.2018-19
    fill_in "Indicator", with: @projection_of_power_requirement3.Indicator
    fill_in "Mar 17", with: @projection_of_power_requirement3.Mar-17
    fill_in "Sector", with: @projection_of_power_requirement3.Sector
    click_on "Create Projection of power requirement3"

    assert_text "Projection of power requirement3 was successfully created"
    click_on "Back"
  end

  test "updating a Projection of power requirement3" do
    visit projection_of_power_requirement3s_url
    click_on "Edit", match: :first

    fill_in "2017 18", with: @projection_of_power_requirement3.2017-18
    fill_in "2018 19", with: @projection_of_power_requirement3.2018-19
    fill_in "Indicator", with: @projection_of_power_requirement3.Indicator
    fill_in "Mar 17", with: @projection_of_power_requirement3.Mar-17
    fill_in "Sector", with: @projection_of_power_requirement3.Sector
    click_on "Update Projection of power requirement3"

    assert_text "Projection of power requirement3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Projection of power requirement3" do
    visit projection_of_power_requirement3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projection of power requirement3 was successfully destroyed"
  end
end
