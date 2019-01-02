require "application_system_test_case"

class SocialSecurityForOldAndDisabledsTest < ApplicationSystemTestCase
  setup do
    @social_security_for_old_and_disabled = social_security_for_old_and_disableds(:one)
  end

  test "visiting the index" do
    visit social_security_for_old_and_disableds_url
    assert_selector "h1", text: "Social Security For Old And Disableds"
  end

  test "creating a Social security for old and disabled" do
    visit social_security_for_old_and_disableds_url
    click_on "New Social Security For Old And Disabled"

    fill_in "Budget Outlay", with: @social_security_for_old_and_disabled.Budget_Outlay
    fill_in "Expenditure", with: @social_security_for_old_and_disabled.Expenditure
    fill_in "Name Of The Scheme", with: @social_security_for_old_and_disabled.Name_of_the_Scheme
    fill_in "Physical Achievement", with: @social_security_for_old_and_disabled.Physical_Achievement
    fill_in "Year", with: @social_security_for_old_and_disabled.Year
    click_on "Create Social security for old and disabled"

    assert_text "Social security for old and disabled was successfully created"
    click_on "Back"
  end

  test "updating a Social security for old and disabled" do
    visit social_security_for_old_and_disableds_url
    click_on "Edit", match: :first

    fill_in "Budget Outlay", with: @social_security_for_old_and_disabled.Budget_Outlay
    fill_in "Expenditure", with: @social_security_for_old_and_disabled.Expenditure
    fill_in "Name Of The Scheme", with: @social_security_for_old_and_disabled.Name_of_the_Scheme
    fill_in "Physical Achievement", with: @social_security_for_old_and_disabled.Physical_Achievement
    fill_in "Year", with: @social_security_for_old_and_disabled.Year
    click_on "Update Social security for old and disabled"

    assert_text "Social security for old and disabled was successfully updated"
    click_on "Back"
  end

  test "destroying a Social security for old and disabled" do
    visit social_security_for_old_and_disableds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social security for old and disabled was successfully destroyed"
  end
end
