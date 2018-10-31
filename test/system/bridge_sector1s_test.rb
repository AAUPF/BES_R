require "application_system_test_case"

class BridgeSector1sTest < ApplicationSystemTestCase
  setup do
    @bridge_sector1 = bridge_sector1s(:one)
  end

  test "visiting the index" do
    visit bridge_sector1s_url
    assert_selector "h1", text: "Bridge Sector1s"
  end

  test "creating a Bridge sector1" do
    visit bridge_sector1s_url
    click_on "New Bridge Sector1"

    fill_in "Cost", with: @bridge_sector1.Cost
    fill_in "Division", with: @bridge_sector1.Division
    fill_in "Number Of Projects", with: @bridge_sector1.Number_of_Projects
    click_on "Create Bridge sector1"

    assert_text "Bridge sector1 was successfully created"
    click_on "Back"
  end

  test "updating a Bridge sector1" do
    visit bridge_sector1s_url
    click_on "Edit", match: :first

    fill_in "Cost", with: @bridge_sector1.Cost
    fill_in "Division", with: @bridge_sector1.Division
    fill_in "Number Of Projects", with: @bridge_sector1.Number_of_Projects
    click_on "Update Bridge sector1"

    assert_text "Bridge sector1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Bridge sector1" do
    visit bridge_sector1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bridge sector1 was successfully destroyed"
  end
end
