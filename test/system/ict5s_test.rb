require "application_system_test_case"

class Ict5sTest < ApplicationSystemTestCase
  setup do
    @ict5 = ict5s(:one)
  end

  test "visiting the index" do
    visit ict5s_url
    assert_selector "h1", text: "Ict5s"
  end

  test "creating a Ict5" do
    visit ict5s_url
    click_on "New Ict5"

    fill_in "Deposits", with: @ict5.Deposits
    fill_in "Indicator", with: @ict5.Indicator
    fill_in "Investment", with: @ict5.Investment
    fill_in "Mg Nrega", with: @ict5.MG_NREGA
    fill_in "Mis", with: @ict5.MIS
    fill_in "Rural", with: @ict5.Rural
    fill_in "State", with: @ict5.State
    fill_in "Sukanya Samridhi Account", with: @ict5.Sukanya_Samridhi_Account
    fill_in "Total", with: @ict5.Total
    click_on "Create Ict5"

    assert_text "Ict5 was successfully created"
    click_on "Back"
  end

  test "updating a Ict5" do
    visit ict5s_url
    click_on "Edit", match: :first

    fill_in "Deposits", with: @ict5.Deposits
    fill_in "Indicator", with: @ict5.Indicator
    fill_in "Investment", with: @ict5.Investment
    fill_in "Mg Nrega", with: @ict5.MG_NREGA
    fill_in "Mis", with: @ict5.MIS
    fill_in "Rural", with: @ict5.Rural
    fill_in "State", with: @ict5.State
    fill_in "Sukanya Samridhi Account", with: @ict5.Sukanya_Samridhi_Account
    fill_in "Total", with: @ict5.Total
    click_on "Update Ict5"

    assert_text "Ict5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Ict5" do
    visit ict5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ict5 was successfully destroyed"
  end
end
