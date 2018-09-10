require "application_system_test_case"

class ResourceManagement1sTest < ApplicationSystemTestCase
  setup do
    @resource_management1 = resource_management1s(:one)
  end

  test "visiting the index" do
    visit resource_management1s_url
    assert_selector "h1", text: "Resource Management1s"
  end

  test "creating a Resource management1" do
    visit resource_management1s_url
    click_on "New Resource Management1"

    fill_in "2012 13", with: @resource_management1.2012-13
    fill_in "2013 14", with: @resource_management1.2013-14
    fill_in "2014 15", with: @resource_management1.2014-15
    fill_in "2015 16", with: @resource_management1.2015-16
    fill_in "2016 17", with: @resource_management1.2016-17
    fill_in "2017 18 Be", with: @resource_management1.2017-18_BE
    fill_in "Sector", with: @resource_management1.Sector
    click_on "Create Resource management1"

    assert_text "Resource management1 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management1" do
    visit resource_management1s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @resource_management1.2012-13
    fill_in "2013 14", with: @resource_management1.2013-14
    fill_in "2014 15", with: @resource_management1.2014-15
    fill_in "2015 16", with: @resource_management1.2015-16
    fill_in "2016 17", with: @resource_management1.2016-17
    fill_in "2017 18 Be", with: @resource_management1.2017-18_BE
    fill_in "Sector", with: @resource_management1.Sector
    click_on "Update Resource management1"

    assert_text "Resource management1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management1" do
    visit resource_management1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management1 was successfully destroyed"
  end
end
