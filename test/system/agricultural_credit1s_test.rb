require "application_system_test_case"

class AgriculturalCredit1sTest < ApplicationSystemTestCase
  setup do
    @agricultural_credit1 = agricultural_credit1s(:one)
  end

  test "visiting the index" do
    visit agricultural_credit1s_url
    assert_selector "h1", text: "Agricultural Credit1s"
  end

  test "creating a Agricultural credit1" do
    visit agricultural_credit1s_url
    click_on "New Agricultural Credit1"

    fill_in "Ccbs Achievement", with: @agricultural_credit1.CCBs_Achievement
    fill_in "Ccbs Target", with: @agricultural_credit1.CCBs_Target
    fill_in "Commercial Bank Achievement", with: @agricultural_credit1.Commercial_Bank_Achievement
    fill_in "Commercial Bank Target", with: @agricultural_credit1.Commercial_Bank_Target
    fill_in "Rrbs Achievement", with: @agricultural_credit1.RRBs_Achievement
    fill_in "Rrbs Target", with: @agricultural_credit1.RRBs_Target
    fill_in "Total Achievement", with: @agricultural_credit1.Total_Achievement
    fill_in "Total Target", with: @agricultural_credit1.Total_Target
    fill_in "Year", with: @agricultural_credit1.Year
    click_on "Create Agricultural credit1"

    assert_text "Agricultural credit1 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural credit1" do
    visit agricultural_credit1s_url
    click_on "Edit", match: :first

    fill_in "Ccbs Achievement", with: @agricultural_credit1.CCBs_Achievement
    fill_in "Ccbs Target", with: @agricultural_credit1.CCBs_Target
    fill_in "Commercial Bank Achievement", with: @agricultural_credit1.Commercial_Bank_Achievement
    fill_in "Commercial Bank Target", with: @agricultural_credit1.Commercial_Bank_Target
    fill_in "Rrbs Achievement", with: @agricultural_credit1.RRBs_Achievement
    fill_in "Rrbs Target", with: @agricultural_credit1.RRBs_Target
    fill_in "Total Achievement", with: @agricultural_credit1.Total_Achievement
    fill_in "Total Target", with: @agricultural_credit1.Total_Target
    fill_in "Year", with: @agricultural_credit1.Year
    click_on "Update Agricultural credit1"

    assert_text "Agricultural credit1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural credit1" do
    visit agricultural_credit1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural credit1 was successfully destroyed"
  end
end
