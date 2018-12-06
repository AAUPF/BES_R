require "application_system_test_case"

class WomenEmpowerment1sTest < ApplicationSystemTestCase
  setup do
    @women_empowerment1 = women_empowerment1s(:one)
  end

  test "visiting the index" do
    visit women_empowerment1s_url
    assert_selector "h1", text: "Women Empowerment1s"
  end

  test "creating a Women empowerment1" do
    visit women_empowerment1s_url
    click_on "New Women Empowerment1"

    fill_in "2012 13", with: @women_empowerment1.2012-13
    fill_in "2013 14", with: @women_empowerment1.2013-14
    fill_in "2014 15", with: @women_empowerment1.2014-15
    fill_in "2015 16", with: @women_empowerment1.2015-16
    fill_in "2016 17", with: @women_empowerment1.2016-17
    fill_in "Details", with: @women_empowerment1.Details
    click_on "Create Women empowerment1"

    assert_text "Women empowerment1 was successfully created"
    click_on "Back"
  end

  test "updating a Women empowerment1" do
    visit women_empowerment1s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @women_empowerment1.2012-13
    fill_in "2013 14", with: @women_empowerment1.2013-14
    fill_in "2014 15", with: @women_empowerment1.2014-15
    fill_in "2015 16", with: @women_empowerment1.2015-16
    fill_in "2016 17", with: @women_empowerment1.2016-17
    fill_in "Details", with: @women_empowerment1.Details
    click_on "Update Women empowerment1"

    assert_text "Women empowerment1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Women empowerment1" do
    visit women_empowerment1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Women empowerment1 was successfully destroyed"
  end
end
