require "application_system_test_case"

class DistributionsTest < ApplicationSystemTestCase
  setup do
    @distribution = distributions(:one)
  end

  test "visiting the index" do
    visit distributions_url
    assert_selector "h1", text: "Distributions"
  end

  test "creating a Distribution" do
    visit distributions_url
    click_on "New Distribution"

    fill_in "Agriculture Consumer", with: @distribution.Agriculture_Consumer
    fill_in "Commercial Consumer", with: @distribution.Commercial_Consumer
    fill_in "Domestic Consumer", with: @distribution.Domestic_Consumer
    fill_in "Industrial Ht Consumer", with: @distribution.Industrial_HT_Consumer
    fill_in "Industrial Lt Consumer", with: @distribution.Industrial_LT_Consumer
    fill_in "Percentage Of Agriculture Consumer", with: @distribution.Percentage_of_Agriculture_Consumer
    fill_in "Percentage Of Commercial Consumer", with: @distribution.Percentage_of_Commercial_Consumer
    fill_in "Percentage Of Domestic Consumer", with: @distribution.Percentage_of_Domestic_Consumer
    fill_in "Percentage Of Industrial Ht Consumer", with: @distribution.Percentage_of_Industrial_HT_Consumer
    fill_in "Percentage Of Industrial Lt Consumer", with: @distribution.Percentage_of_Industrial_LT_Consumer
    fill_in "Percentage Of Public Lighting Consumer", with: @distribution.Percentage_of_Public_Lighting_Consumer
    fill_in "Percentage Of Public Water Works Consumer", with: @distribution.Percentage_of_Public_Water_Works_Consumer
    fill_in "Percentage Of Total Consumer", with: @distribution.Percentage_of_Total_Consumer
    fill_in "Public Lighting Consumer", with: @distribution.Public_Lighting_Consumer
    fill_in "Public Water Works Consumer", with: @distribution.Public_Water_Works_Consumer
    fill_in "Total Consumer", with: @distribution.Total_Consumer
    fill_in "Traction Consumer", with: @distribution.Traction_Consumer
    fill_in "Year", with: @distribution.Year
    click_on "Create Distribution"

    assert_text "Distribution was successfully created"
    click_on "Back"
  end

  test "updating a Distribution" do
    visit distributions_url
    click_on "Edit", match: :first

    fill_in "Agriculture Consumer", with: @distribution.Agriculture_Consumer
    fill_in "Commercial Consumer", with: @distribution.Commercial_Consumer
    fill_in "Domestic Consumer", with: @distribution.Domestic_Consumer
    fill_in "Industrial Ht Consumer", with: @distribution.Industrial_HT_Consumer
    fill_in "Industrial Lt Consumer", with: @distribution.Industrial_LT_Consumer
    fill_in "Percentage Of Agriculture Consumer", with: @distribution.Percentage_of_Agriculture_Consumer
    fill_in "Percentage Of Commercial Consumer", with: @distribution.Percentage_of_Commercial_Consumer
    fill_in "Percentage Of Domestic Consumer", with: @distribution.Percentage_of_Domestic_Consumer
    fill_in "Percentage Of Industrial Ht Consumer", with: @distribution.Percentage_of_Industrial_HT_Consumer
    fill_in "Percentage Of Industrial Lt Consumer", with: @distribution.Percentage_of_Industrial_LT_Consumer
    fill_in "Percentage Of Public Lighting Consumer", with: @distribution.Percentage_of_Public_Lighting_Consumer
    fill_in "Percentage Of Public Water Works Consumer", with: @distribution.Percentage_of_Public_Water_Works_Consumer
    fill_in "Percentage Of Total Consumer", with: @distribution.Percentage_of_Total_Consumer
    fill_in "Public Lighting Consumer", with: @distribution.Public_Lighting_Consumer
    fill_in "Public Water Works Consumer", with: @distribution.Public_Water_Works_Consumer
    fill_in "Total Consumer", with: @distribution.Total_Consumer
    fill_in "Traction Consumer", with: @distribution.Traction_Consumer
    fill_in "Year", with: @distribution.Year
    click_on "Update Distribution"

    assert_text "Distribution was successfully updated"
    click_on "Back"
  end

  test "destroying a Distribution" do
    visit distributions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Distribution was successfully destroyed"
  end
end
