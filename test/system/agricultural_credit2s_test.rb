require "application_system_test_case"

class AgriculturalCredit2sTest < ApplicationSystemTestCase
  setup do
    @agricultural_credit2 = agricultural_credit2s(:one)
  end

  test "visiting the index" do
    visit agricultural_credit2s_url
    assert_selector "h1", text: "Agricultural Credit2s"
  end

  test "creating a Agricultural credit2" do
    visit agricultural_credit2s_url
    click_on "New Agricultural Credit2"

    fill_in "Achievement 2014", with: @agricultural_credit2.Achievement_2014
    fill_in "Achievement 2015", with: @agricultural_credit2.Achievement_2015
    fill_in "Achievement 2016", with: @agricultural_credit2.Achievement_2016
    fill_in "Districts", with: @agricultural_credit2.Districts
    fill_in "Target 2014", with: @agricultural_credit2.Target_2014
    fill_in "Target 2015", with: @agricultural_credit2.Target_2015
    fill_in "Target 2016", with: @agricultural_credit2.Target_2016
    click_on "Create Agricultural credit2"

    assert_text "Agricultural credit2 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural credit2" do
    visit agricultural_credit2s_url
    click_on "Edit", match: :first

    fill_in "Achievement 2014", with: @agricultural_credit2.Achievement_2014
    fill_in "Achievement 2015", with: @agricultural_credit2.Achievement_2015
    fill_in "Achievement 2016", with: @agricultural_credit2.Achievement_2016
    fill_in "Districts", with: @agricultural_credit2.Districts
    fill_in "Target 2014", with: @agricultural_credit2.Target_2014
    fill_in "Target 2015", with: @agricultural_credit2.Target_2015
    fill_in "Target 2016", with: @agricultural_credit2.Target_2016
    click_on "Update Agricultural credit2"

    assert_text "Agricultural credit2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural credit2" do
    visit agricultural_credit2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural credit2 was successfully destroyed"
  end
end
