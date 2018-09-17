require "application_system_test_case"

class ResourceManagement14sTest < ApplicationSystemTestCase
  setup do
    @resource_management14 = resource_management14s(:one)
  end

  test "visiting the index" do
    visit resource_management14s_url
    assert_selector "h1", text: "Resource Management14s"
  end

  test "creating a Resource management14" do
    visit resource_management14s_url
    click_on "New Resource Management14"

    fill_in "2016 17", with: @resource_management14.2016-17
    fill_in "Agency", with: @resource_management14.Agency
    fill_in "Goi Scheme", with: @resource_management14.GoI_Scheme
    click_on "Create Resource management14"

    assert_text "Resource management14 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management14" do
    visit resource_management14s_url
    click_on "Edit", match: :first

    fill_in "2016 17", with: @resource_management14.2016-17
    fill_in "Agency", with: @resource_management14.Agency
    fill_in "Goi Scheme", with: @resource_management14.GoI_Scheme
    click_on "Update Resource management14"

    assert_text "Resource management14 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management14" do
    visit resource_management14s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management14 was successfully destroyed"
  end
end
