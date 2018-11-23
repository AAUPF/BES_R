require "application_system_test_case"

class LevelOfUrbanisation5sTest < ApplicationSystemTestCase
  setup do
    @level_of_urbanisation5 = level_of_urbanisation5s(:one)
  end

  test "visiting the index" do
    visit level_of_urbanisation5s_url
    assert_selector "h1", text: "Level Of Urbanisation5s"
  end

  test "creating a Level of urbanisation5" do
    visit level_of_urbanisation5s_url
    click_on "New Level Of Urbanisation5"

    fill_in "Municipal Corporations", with: @level_of_urbanisation5.Municipal_Corporations
    fill_in "Municipal Councils", with: @level_of_urbanisation5.Municipal_Councils
    fill_in "Nagar Panchayats", with: @level_of_urbanisation5.Nagar_Panchayats
    fill_in "Particulars", with: @level_of_urbanisation5.Particulars
    fill_in "Total", with: @level_of_urbanisation5.Total
    click_on "Create Level of urbanisation5"

    assert_text "Level of urbanisation5 was successfully created"
    click_on "Back"
  end

  test "updating a Level of urbanisation5" do
    visit level_of_urbanisation5s_url
    click_on "Edit", match: :first

    fill_in "Municipal Corporations", with: @level_of_urbanisation5.Municipal_Corporations
    fill_in "Municipal Councils", with: @level_of_urbanisation5.Municipal_Councils
    fill_in "Nagar Panchayats", with: @level_of_urbanisation5.Nagar_Panchayats
    fill_in "Particulars", with: @level_of_urbanisation5.Particulars
    fill_in "Total", with: @level_of_urbanisation5.Total
    click_on "Update Level of urbanisation5"

    assert_text "Level of urbanisation5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Level of urbanisation5" do
    visit level_of_urbanisation5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Level of urbanisation5 was successfully destroyed"
  end
end
