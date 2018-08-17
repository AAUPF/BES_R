require "application_system_test_case"

class StateDomesticProduct11sTest < ApplicationSystemTestCase
  setup do
    @state_domestic_product11 = state_domestic_product11s(:one)
  end

  test "visiting the index" do
    visit state_domestic_product11s_url
    assert_selector "h1", text: "State Domestic Product11s"
  end

  test "creating a State domestic product11" do
    visit state_domestic_product11s_url
    click_on "New State Domestic Product11"

    fill_in "Achievement", with: @state_domestic_product11.Achievement
    fill_in "Districts", with: @state_domestic_product11.Districts
    fill_in "Target", with: @state_domestic_product11.Target
    fill_in "Year", with: @state_domestic_product11.Year
    click_on "Create State domestic product11"

    assert_text "State domestic product11 was successfully created"
    click_on "Back"
  end

  test "updating a State domestic product11" do
    visit state_domestic_product11s_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @state_domestic_product11.Achievement
    fill_in "Districts", with: @state_domestic_product11.Districts
    fill_in "Target", with: @state_domestic_product11.Target
    fill_in "Year", with: @state_domestic_product11.Year
    click_on "Update State domestic product11"

    assert_text "State domestic product11 was successfully updated"
    click_on "Back"
  end

  test "destroying a State domestic product11" do
    visit state_domestic_product11s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State domestic product11 was successfully destroyed"
  end
end
