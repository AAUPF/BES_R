require "application_system_test_case"

class ProjectionOfPowerRequirement1sTest < ApplicationSystemTestCase
  setup do
    @projection_of_power_requirement1 = projection_of_power_requirement1s(:one)
  end

  test "visiting the index" do
    visit projection_of_power_requirement1s_url
    assert_selector "h1", text: "Projection Of Power Requirement1s"
  end

  test "creating a Projection of power requirement1" do
    visit projection_of_power_requirement1s_url
    click_on "New Projection Of Power Requirement1"

    fill_in "2017 18", with: @projection_of_power_requirement1.2017-18
    fill_in "2018 19", with: @projection_of_power_requirement1.2018-19
    fill_in "Category Of Households", with: @projection_of_power_requirement1.Category_of_Households
    click_on "Create Projection of power requirement1"

    assert_text "Projection of power requirement1 was successfully created"
    click_on "Back"
  end

  test "updating a Projection of power requirement1" do
    visit projection_of_power_requirement1s_url
    click_on "Edit", match: :first

    fill_in "2017 18", with: @projection_of_power_requirement1.2017-18
    fill_in "2018 19", with: @projection_of_power_requirement1.2018-19
    fill_in "Category Of Households", with: @projection_of_power_requirement1.Category_of_Households
    click_on "Update Projection of power requirement1"

    assert_text "Projection of power requirement1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Projection of power requirement1" do
    visit projection_of_power_requirement1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projection of power requirement1 was successfully destroyed"
  end
end
