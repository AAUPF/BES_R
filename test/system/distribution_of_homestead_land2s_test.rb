require "application_system_test_case"

class DistributionOfHomesteadLand2sTest < ApplicationSystemTestCase
  setup do
    @distribution_of_homestead_land2 = distribution_of_homestead_land2s(:one)
  end

  test "visiting the index" do
    visit distribution_of_homestead_land2s_url
    assert_selector "h1", text: "Distribution Of Homestead Land2s"
  end

  test "creating a Distribution of homestead land2" do
    visit distribution_of_homestead_land2s_url
    click_on "New Distribution Of Homestead Land2"

    fill_in "2005 06", with: @distribution_of_homestead_land2.2005-06
    fill_in "2010 11", with: @distribution_of_homestead_land2.2010-11
    fill_in "Indicator", with: @distribution_of_homestead_land2.Indicator
    fill_in "Sector", with: @distribution_of_homestead_land2.Sector
    click_on "Create Distribution of homestead land2"

    assert_text "Distribution of homestead land2 was successfully created"
    click_on "Back"
  end

  test "updating a Distribution of homestead land2" do
    visit distribution_of_homestead_land2s_url
    click_on "Edit", match: :first

    fill_in "2005 06", with: @distribution_of_homestead_land2.2005-06
    fill_in "2010 11", with: @distribution_of_homestead_land2.2010-11
    fill_in "Indicator", with: @distribution_of_homestead_land2.Indicator
    fill_in "Sector", with: @distribution_of_homestead_land2.Sector
    click_on "Update Distribution of homestead land2"

    assert_text "Distribution of homestead land2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Distribution of homestead land2" do
    visit distribution_of_homestead_land2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Distribution of homestead land2 was successfully destroyed"
  end
end
