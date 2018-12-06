require "application_system_test_case"

class SocialWelfare3sTest < ApplicationSystemTestCase
  setup do
    @social_welfare3 = social_welfare3s(:one)
  end

  test "visiting the index" do
    visit social_welfare3s_url
    assert_selector "h1", text: "Social Welfare3s"
  end

  test "creating a Social welfare3" do
    visit social_welfare3s_url
    click_on "New Social Welfare3"

    fill_in "Fund Allocation", with: @social_welfare3.Fund_Allocation
    fill_in "Indicator", with: @social_welfare3.Indicator
    fill_in "Number Of Beneficiaries", with: @social_welfare3.Number_of_Beneficiaries
    fill_in "Year", with: @social_welfare3.Year
    click_on "Create Social welfare3"

    assert_text "Social welfare3 was successfully created"
    click_on "Back"
  end

  test "updating a Social welfare3" do
    visit social_welfare3s_url
    click_on "Edit", match: :first

    fill_in "Fund Allocation", with: @social_welfare3.Fund_Allocation
    fill_in "Indicator", with: @social_welfare3.Indicator
    fill_in "Number Of Beneficiaries", with: @social_welfare3.Number_of_Beneficiaries
    fill_in "Year", with: @social_welfare3.Year
    click_on "Update Social welfare3"

    assert_text "Social welfare3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Social welfare3" do
    visit social_welfare3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social welfare3 was successfully destroyed"
  end
end
