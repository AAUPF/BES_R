require "application_system_test_case"

class SectoralShare8sTest < ApplicationSystemTestCase
  setup do
    @sectoral_share8 = sectoral_share8s(:one)
  end

  test "visiting the index" do
    visit sectoral_share8s_url
    assert_selector "h1", text: "Sectoral Share8s"
  end

  test "creating a Sectoral share8" do
    visit sectoral_share8s_url
    click_on "New Sectoral Share8"

    fill_in "2014 15", with: @sectoral_share8.2014-15
    fill_in "2015 16", with: @sectoral_share8.2015-16
    fill_in "Branches As On March 30 2016", with: @sectoral_share8.Branches_as_on_March_30_2016
    fill_in "Indicator", with: @sectoral_share8.Indicator
    fill_in "State", with: @sectoral_share8.State
    click_on "Create Sectoral share8"

    assert_text "Sectoral share8 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral share8" do
    visit sectoral_share8s_url
    click_on "Edit", match: :first

    fill_in "2014 15", with: @sectoral_share8.2014-15
    fill_in "2015 16", with: @sectoral_share8.2015-16
    fill_in "Branches As On March 30 2016", with: @sectoral_share8.Branches_as_on_March_30_2016
    fill_in "Indicator", with: @sectoral_share8.Indicator
    fill_in "State", with: @sectoral_share8.State
    click_on "Update Sectoral share8"

    assert_text "Sectoral share8 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral share8" do
    visit sectoral_share8s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral share8 was successfully destroyed"
  end
end
