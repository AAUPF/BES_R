require "application_system_test_case"

class MininngsTest < ApplicationSystemTestCase
  setup do
    @mininng = mininngs(:one)
  end

  test "visiting the index" do
    visit mininngs_url
    assert_selector "h1", text: "Mininngs"
  end

  test "creating a Mininng" do
    visit mininngs_url
    click_on "New Mininng"

    fill_in "2014 15", with: @mininng.2014-15
    fill_in "2015 16", with: @mininng.2015-16
    fill_in "2016 17", with: @mininng.2016-17
    fill_in "Sector", with: @mininng.Sector
    click_on "Create Mininng"

    assert_text "Mininng was successfully created"
    click_on "Back"
  end

  test "updating a Mininng" do
    visit mininngs_url
    click_on "Edit", match: :first

    fill_in "2014 15", with: @mininng.2014-15
    fill_in "2015 16", with: @mininng.2015-16
    fill_in "2016 17", with: @mininng.2016-17
    fill_in "Sector", with: @mininng.Sector
    click_on "Update Mininng"

    assert_text "Mininng was successfully updated"
    click_on "Back"
  end

  test "destroying a Mininng" do
    visit mininngs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mininng was successfully destroyed"
  end
end
