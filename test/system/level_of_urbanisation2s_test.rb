require "application_system_test_case"

class LevelOfUrbanisation2sTest < ApplicationSystemTestCase
  setup do
    @level_of_urbanisation2 = level_of_urbanisation2s(:one)
  end

  test "visiting the index" do
    visit level_of_urbanisation2s_url
    assert_selector "h1", text: "Level Of Urbanisation2s"
  end

  test "creating a Level of urbanisation2" do
    visit level_of_urbanisation2s_url
    click_on "New Level Of Urbanisation2"

    fill_in "Growth Rate Of Population", with: @level_of_urbanisation2.Growth_Rate_of_Population
    fill_in "Number 2001", with: @level_of_urbanisation2.Number_2001
    fill_in "Number 2011", with: @level_of_urbanisation2.Number_2011
    fill_in "Population Million 2001", with: @level_of_urbanisation2.Population_million_2001
    fill_in "Population Million 2011", with: @level_of_urbanisation2.Population_million_2011
    fill_in "Size Class", with: @level_of_urbanisation2.Size_Class
    click_on "Create Level of urbanisation2"

    assert_text "Level of urbanisation2 was successfully created"
    click_on "Back"
  end

  test "updating a Level of urbanisation2" do
    visit level_of_urbanisation2s_url
    click_on "Edit", match: :first

    fill_in "Growth Rate Of Population", with: @level_of_urbanisation2.Growth_Rate_of_Population
    fill_in "Number 2001", with: @level_of_urbanisation2.Number_2001
    fill_in "Number 2011", with: @level_of_urbanisation2.Number_2011
    fill_in "Population Million 2001", with: @level_of_urbanisation2.Population_million_2001
    fill_in "Population Million 2011", with: @level_of_urbanisation2.Population_million_2011
    fill_in "Size Class", with: @level_of_urbanisation2.Size_Class
    click_on "Update Level of urbanisation2"

    assert_text "Level of urbanisation2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Level of urbanisation2" do
    visit level_of_urbanisation2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Level of urbanisation2 was successfully destroyed"
  end
end
