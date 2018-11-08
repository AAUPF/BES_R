require "application_system_test_case"

class RoadTransport1Part1sTest < ApplicationSystemTestCase
  setup do
    @road_transport1_part1 = road_transport1_part1s(:one)
  end

  test "visiting the index" do
    visit road_transport1_part1s_url
    assert_selector "h1", text: "Road Transport1 Part1s"
  end

  test "creating a Road transport1 part1" do
    visit road_transport1_part1s_url
    click_on "New Road Transport1 Part1"

    fill_in "Cars", with: @road_transport1_part1.Cars
    fill_in "Jeeps", with: @road_transport1_part1.Jeeps
    fill_in "Miscellaneous", with: @road_transport1_part1.Miscellaneous
    fill_in "State", with: @road_transport1_part1.State
    fill_in "Two Wheeler", with: @road_transport1_part1.Two_Wheeler
    click_on "Create Road transport1 part1"

    assert_text "Road transport1 part1 was successfully created"
    click_on "Back"
  end

  test "updating a Road transport1 part1" do
    visit road_transport1_part1s_url
    click_on "Edit", match: :first

    fill_in "Cars", with: @road_transport1_part1.Cars
    fill_in "Jeeps", with: @road_transport1_part1.Jeeps
    fill_in "Miscellaneous", with: @road_transport1_part1.Miscellaneous
    fill_in "State", with: @road_transport1_part1.State
    fill_in "Two Wheeler", with: @road_transport1_part1.Two_Wheeler
    click_on "Update Road transport1 part1"

    assert_text "Road transport1 part1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Road transport1 part1" do
    visit road_transport1_part1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Road transport1 part1 was successfully destroyed"
  end
end
