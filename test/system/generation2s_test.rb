require "application_system_test_case"

class Generation2sTest < ApplicationSystemTestCase
  setup do
    @generation2 = generation2s(:one)
  end

  test "visiting the index" do
    visit generation2s_url
    assert_selector "h1", text: "Generation2s"
  end

  test "creating a Generation2" do
    visit generation2s_url
    click_on "New Generation2"

    fill_in "2015 16", with: @generation2.2015-16
    fill_in "2016 17", with: @generation2.2016-17
    fill_in "2017 18 Under Progress", with: @generation2.2017-18_Under_Progress
    fill_in "2018 19", with: @generation2.2018-19
    fill_in "Beyond 2022", with: @generation2.Beyond_2022
    fill_in "By 2022 Upcoming Projects", with: @generation2.By_2022_Upcoming_Projects
    fill_in "Thermal Plan", with: @generation2.Thermal_Plan
    click_on "Create Generation2"

    assert_text "Generation2 was successfully created"
    click_on "Back"
  end

  test "updating a Generation2" do
    visit generation2s_url
    click_on "Edit", match: :first

    fill_in "2015 16", with: @generation2.2015-16
    fill_in "2016 17", with: @generation2.2016-17
    fill_in "2017 18 Under Progress", with: @generation2.2017-18_Under_Progress
    fill_in "2018 19", with: @generation2.2018-19
    fill_in "Beyond 2022", with: @generation2.Beyond_2022
    fill_in "By 2022 Upcoming Projects", with: @generation2.By_2022_Upcoming_Projects
    fill_in "Thermal Plan", with: @generation2.Thermal_Plan
    click_on "Update Generation2"

    assert_text "Generation2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Generation2" do
    visit generation2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Generation2 was successfully destroyed"
  end
end
