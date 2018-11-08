require "application_system_test_case"

class ProjectionOfPowerRequirement2sTest < ApplicationSystemTestCase
  setup do
    @projection_of_power_requirement2 = projection_of_power_requirement2s(:one)
  end

  test "visiting the index" do
    visit projection_of_power_requirement2s_url
    assert_selector "h1", text: "Projection Of Power Requirement2s"
  end

  test "creating a Projection of power requirement2" do
    visit projection_of_power_requirement2s_url
    click_on "New Projection Of Power Requirement2"

    fill_in "2017 18", with: @projection_of_power_requirement2.2017-18
    fill_in "2018 19", with: @projection_of_power_requirement2.2018-19
    fill_in "Indicators", with: @projection_of_power_requirement2.Indicators
    click_on "Create Projection of power requirement2"

    assert_text "Projection of power requirement2 was successfully created"
    click_on "Back"
  end

  test "updating a Projection of power requirement2" do
    visit projection_of_power_requirement2s_url
    click_on "Edit", match: :first

    fill_in "2017 18", with: @projection_of_power_requirement2.2017-18
    fill_in "2018 19", with: @projection_of_power_requirement2.2018-19
    fill_in "Indicators", with: @projection_of_power_requirement2.Indicators
    click_on "Update Projection of power requirement2"

    assert_text "Projection of power requirement2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Projection of power requirement2" do
    visit projection_of_power_requirement2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projection of power requirement2 was successfully destroyed"
  end
end
