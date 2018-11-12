require "application_system_test_case"

class ProjectionOfPowerRequirement4sTest < ApplicationSystemTestCase
  setup do
    @projection_of_power_requirement4 = projection_of_power_requirement4s(:one)
  end

  test "visiting the index" do
    visit projection_of_power_requirement4s_url
    assert_selector "h1", text: "Projection Of Power Requirement4s"
  end

  test "creating a Projection of power requirement4" do
    visit projection_of_power_requirement4s_url
    click_on "New Projection Of Power Requirement4"

    fill_in "Estimated Energy Availability At State Periphery Mu", with: @projection_of_power_requirement4.Estimated_Energy_Availability_at_State_Periphery_MU
    fill_in "Estimated Peak Availability At State Periphery Mw", with: @projection_of_power_requirement4.Estimated_Peak_Availability_at_State_Periphery_MW
    fill_in "Total Capacity Mw", with: @projection_of_power_requirement4.Total_Capacity_MW
    fill_in "Year", with: @projection_of_power_requirement4.Year
    click_on "Create Projection of power requirement4"

    assert_text "Projection of power requirement4 was successfully created"
    click_on "Back"
  end

  test "updating a Projection of power requirement4" do
    visit projection_of_power_requirement4s_url
    click_on "Edit", match: :first

    fill_in "Estimated Energy Availability At State Periphery Mu", with: @projection_of_power_requirement4.Estimated_Energy_Availability_at_State_Periphery_MU
    fill_in "Estimated Peak Availability At State Periphery Mw", with: @projection_of_power_requirement4.Estimated_Peak_Availability_at_State_Periphery_MW
    fill_in "Total Capacity Mw", with: @projection_of_power_requirement4.Total_Capacity_MW
    fill_in "Year", with: @projection_of_power_requirement4.Year
    click_on "Update Projection of power requirement4"

    assert_text "Projection of power requirement4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Projection of power requirement4" do
    visit projection_of_power_requirement4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projection of power requirement4 was successfully destroyed"
  end
end
