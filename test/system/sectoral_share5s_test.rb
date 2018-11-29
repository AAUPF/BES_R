require "application_system_test_case"

class SectoralShare5sTest < ApplicationSystemTestCase
  setup do
    @sectoral_share5 = sectoral_share5s(:one)
  end

  test "visiting the index" do
    visit sectoral_share5s_url
    assert_selector "h1", text: "Sectoral Share5s"
  end

  test "creating a Sectoral share5" do
    visit sectoral_share5s_url
    click_on "New Sectoral Share5"

    fill_in "Annual Growth Rate", with: @sectoral_share5.Annual_Growth_Rate
    fill_in "Commercial Banks", with: @sectoral_share5.Commercial_Banks
    fill_in "Cooperative And Ldbs", with: @sectoral_share5.Cooperative_and_LDBs
    fill_in "Rrbs", with: @sectoral_share5.RRBs
    fill_in "Total", with: @sectoral_share5.Total
    fill_in "Year", with: @sectoral_share5.Year
    click_on "Create Sectoral share5"

    assert_text "Sectoral share5 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral share5" do
    visit sectoral_share5s_url
    click_on "Edit", match: :first

    fill_in "Annual Growth Rate", with: @sectoral_share5.Annual_Growth_Rate
    fill_in "Commercial Banks", with: @sectoral_share5.Commercial_Banks
    fill_in "Cooperative And Ldbs", with: @sectoral_share5.Cooperative_and_LDBs
    fill_in "Rrbs", with: @sectoral_share5.RRBs
    fill_in "Total", with: @sectoral_share5.Total
    fill_in "Year", with: @sectoral_share5.Year
    click_on "Update Sectoral share5"

    assert_text "Sectoral share5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral share5" do
    visit sectoral_share5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral share5 was successfully destroyed"
  end
end
