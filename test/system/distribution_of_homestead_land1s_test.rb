require "application_system_test_case"

class DistributionOfHomesteadLand1sTest < ApplicationSystemTestCase
  setup do
    @distribution_of_homestead_land1 = distribution_of_homestead_land1s(:one)
  end

  test "visiting the index" do
    visit distribution_of_homestead_land1s_url
    assert_selector "h1", text: "Distribution Of Homestead Land1s"
  end

  test "creating a Distribution of homestead land1" do
    visit distribution_of_homestead_land1s_url
    click_on "New Distribution Of Homestead Land1"

    fill_in "Bc Schedule 1", with: @distribution_of_homestead_land1.BC_Schedule_1
    fill_in "Bc Schedule 2", with: @distribution_of_homestead_land1.BC_Schedule_2
    fill_in "Item", with: @distribution_of_homestead_land1.Item
    fill_in "Mahadalit", with: @distribution_of_homestead_land1.Mahadalit
    fill_in "Percentage Of Bc Schedule 1", with: @distribution_of_homestead_land1.Percentage_of_BC_Schedule_1
    fill_in "Percentage Of Bc Schedule 2", with: @distribution_of_homestead_land1.Percentage_of_BC_Schedule_2
    fill_in "Percentage Of Mahadalit", with: @distribution_of_homestead_land1.Percentage_of_Mahadalit
    fill_in "Percentage Of Sc", with: @distribution_of_homestead_land1.Percentage_of_SC
    fill_in "Percentage Of St", with: @distribution_of_homestead_land1.Percentage_of_ST
    fill_in "Sc", with: @distribution_of_homestead_land1.SC
    fill_in "St", with: @distribution_of_homestead_land1.ST
    fill_in "Total", with: @distribution_of_homestead_land1.Total
    fill_in "Total Percentage", with: @distribution_of_homestead_land1.Total_Percentage
    click_on "Create Distribution of homestead land1"

    assert_text "Distribution of homestead land1 was successfully created"
    click_on "Back"
  end

  test "updating a Distribution of homestead land1" do
    visit distribution_of_homestead_land1s_url
    click_on "Edit", match: :first

    fill_in "Bc Schedule 1", with: @distribution_of_homestead_land1.BC_Schedule_1
    fill_in "Bc Schedule 2", with: @distribution_of_homestead_land1.BC_Schedule_2
    fill_in "Item", with: @distribution_of_homestead_land1.Item
    fill_in "Mahadalit", with: @distribution_of_homestead_land1.Mahadalit
    fill_in "Percentage Of Bc Schedule 1", with: @distribution_of_homestead_land1.Percentage_of_BC_Schedule_1
    fill_in "Percentage Of Bc Schedule 2", with: @distribution_of_homestead_land1.Percentage_of_BC_Schedule_2
    fill_in "Percentage Of Mahadalit", with: @distribution_of_homestead_land1.Percentage_of_Mahadalit
    fill_in "Percentage Of Sc", with: @distribution_of_homestead_land1.Percentage_of_SC
    fill_in "Percentage Of St", with: @distribution_of_homestead_land1.Percentage_of_ST
    fill_in "Sc", with: @distribution_of_homestead_land1.SC
    fill_in "St", with: @distribution_of_homestead_land1.ST
    fill_in "Total", with: @distribution_of_homestead_land1.Total
    fill_in "Total Percentage", with: @distribution_of_homestead_land1.Total_Percentage
    click_on "Update Distribution of homestead land1"

    assert_text "Distribution of homestead land1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Distribution of homestead land1" do
    visit distribution_of_homestead_land1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Distribution of homestead land1 was successfully destroyed"
  end
end
