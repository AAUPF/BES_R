require "application_system_test_case"

class Transmission1sTest < ApplicationSystemTestCase
  setup do
    @transmission1 = transmission1s(:one)
  end

  test "visiting the index" do
    visit transmission1s_url
    assert_selector "h1", text: "Transmission1s"
  end

  test "creating a Transmission1" do
    visit transmission1s_url
    click_on "New Transmission1"

    fill_in "2017 18", with: @transmission1.2017-18
    fill_in "2018 19", with: @transmission1.2018-19
    fill_in "2019 20", with: @transmission1.2019-20
    fill_in "Demand Capacity", with: @transmission1.Demand_Capacity
    click_on "Create Transmission1"

    assert_text "Transmission1 was successfully created"
    click_on "Back"
  end

  test "updating a Transmission1" do
    visit transmission1s_url
    click_on "Edit", match: :first

    fill_in "2017 18", with: @transmission1.2017-18
    fill_in "2018 19", with: @transmission1.2018-19
    fill_in "2019 20", with: @transmission1.2019-20
    fill_in "Demand Capacity", with: @transmission1.Demand_Capacity
    click_on "Update Transmission1"

    assert_text "Transmission1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Transmission1" do
    visit transmission1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transmission1 was successfully destroyed"
  end
end
