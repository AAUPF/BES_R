require "application_system_test_case"

class ProductionProductivity10sTest < ApplicationSystemTestCase
  setup do
    @production_productivity10 = production_productivity10s(:one)
  end

  test "visiting the index" do
    visit production_productivity10s_url
    assert_selector "h1", text: "Production Productivity10s"
  end

  test "creating a Production productivity10" do
    visit production_productivity10s_url
    click_on "New Production Productivity10"

    fill_in "Banana Area 2015", with: @production_productivity10.Banana_Area_2015
    fill_in "Banana Area 2016", with: @production_productivity10.Banana_Area_2016
    fill_in "Banana Production 2015", with: @production_productivity10.Banana_Production_2015
    fill_in "Banana Production 2016", with: @production_productivity10.Banana_Production_2016
    fill_in "Districts", with: @production_productivity10.Districts
    fill_in "Guava Area 2015", with: @production_productivity10.Guava_Area_2015
    fill_in "Guava Area 2016", with: @production_productivity10.Guava_Area_2016
    fill_in "Guava Production 2015", with: @production_productivity10.Guava_Production_2015
    fill_in "Guava Production 2016", with: @production_productivity10.Guava_Production_2016
    fill_in "Litchi Area 2015", with: @production_productivity10.Litchi_Area_2015
    fill_in "Litchi Area 2016", with: @production_productivity10.Litchi_Area_2016
    fill_in "Litchi Production 2015", with: @production_productivity10.Litchi_Production_2015
    fill_in "Litchi Production 2016", with: @production_productivity10.Litchi_Production_2016
    fill_in "Mango Area 2015", with: @production_productivity10.Mango_Area_2015
    fill_in "Mango Area 2016", with: @production_productivity10.Mango_Area_2016
    fill_in "Mango Production 2015", with: @production_productivity10.Mango_Production_2015
    fill_in "Mango Production 2016", with: @production_productivity10.Mango_Production_2016
    click_on "Create Production productivity10"

    assert_text "Production productivity10 was successfully created"
    click_on "Back"
  end

  test "updating a Production productivity10" do
    visit production_productivity10s_url
    click_on "Edit", match: :first

    fill_in "Banana Area 2015", with: @production_productivity10.Banana_Area_2015
    fill_in "Banana Area 2016", with: @production_productivity10.Banana_Area_2016
    fill_in "Banana Production 2015", with: @production_productivity10.Banana_Production_2015
    fill_in "Banana Production 2016", with: @production_productivity10.Banana_Production_2016
    fill_in "Districts", with: @production_productivity10.Districts
    fill_in "Guava Area 2015", with: @production_productivity10.Guava_Area_2015
    fill_in "Guava Area 2016", with: @production_productivity10.Guava_Area_2016
    fill_in "Guava Production 2015", with: @production_productivity10.Guava_Production_2015
    fill_in "Guava Production 2016", with: @production_productivity10.Guava_Production_2016
    fill_in "Litchi Area 2015", with: @production_productivity10.Litchi_Area_2015
    fill_in "Litchi Area 2016", with: @production_productivity10.Litchi_Area_2016
    fill_in "Litchi Production 2015", with: @production_productivity10.Litchi_Production_2015
    fill_in "Litchi Production 2016", with: @production_productivity10.Litchi_Production_2016
    fill_in "Mango Area 2015", with: @production_productivity10.Mango_Area_2015
    fill_in "Mango Area 2016", with: @production_productivity10.Mango_Area_2016
    fill_in "Mango Production 2015", with: @production_productivity10.Mango_Production_2015
    fill_in "Mango Production 2016", with: @production_productivity10.Mango_Production_2016
    click_on "Update Production productivity10"

    assert_text "Production productivity10 was successfully updated"
    click_on "Back"
  end

  test "destroying a Production productivity10" do
    visit production_productivity10s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Production productivity10 was successfully destroyed"
  end
end
