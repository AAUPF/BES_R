require "application_system_test_case"

class ProjectionOfPowerRequirement5sTest < ApplicationSystemTestCase
  setup do
    @projection_of_power_requirement5 = projection_of_power_requirement5s(:one)
  end

  test "visiting the index" do
    visit projection_of_power_requirement5s_url
    assert_selector "h1", text: "Projection Of Power Requirement5s"
  end

  test "creating a Projection of power requirement5" do
    visit projection_of_power_requirement5s_url
    click_on "New Projection Of Power Requirement5"

    fill_in "2017 18", with: @projection_of_power_requirement5.2017-18
    fill_in "2018 19", with: @projection_of_power_requirement5.2018-19
    fill_in "2019 20", with: @projection_of_power_requirement5.2019-20
    fill_in "Sector", with: @projection_of_power_requirement5.Sector
    click_on "Create Projection of power requirement5"

    assert_text "Projection of power requirement5 was successfully created"
    click_on "Back"
  end

  test "updating a Projection of power requirement5" do
    visit projection_of_power_requirement5s_url
    click_on "Edit", match: :first

    fill_in "2017 18", with: @projection_of_power_requirement5.2017-18
    fill_in "2018 19", with: @projection_of_power_requirement5.2018-19
    fill_in "2019 20", with: @projection_of_power_requirement5.2019-20
    fill_in "Sector", with: @projection_of_power_requirement5.Sector
    click_on "Update Projection of power requirement5"

    assert_text "Projection of power requirement5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Projection of power requirement5" do
    visit projection_of_power_requirement5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projection of power requirement5 was successfully destroyed"
  end
end
