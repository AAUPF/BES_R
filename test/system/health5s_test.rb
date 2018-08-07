require "application_system_test_case"

class Health5sTest < ApplicationSystemTestCase
  setup do
    @health5 = health5s(:one)
  end

  test "visiting the index" do
    visit health5s_url
    assert_selector "h1", text: "Health5s"
  end

  test "creating a Health5" do
    visit health5s_url
    click_on "New Health5"

    fill_in "Aphc", with: @health5.APHC
    fill_in "District Hospital", with: @health5.District_Hospital
    fill_in "Health Centres Per Lakh Of Population", with: @health5.Health_centres_per_lakh_of_population
    fill_in "Phc", with: @health5.PHC
    fill_in "Referral Hospital", with: @health5.Referral_Hospital
    fill_in "Sub Centre", with: @health5.Sub_Centre
    fill_in "Sub Divisional Hospital", with: @health5.Sub_Divisional_Hospital
    fill_in "Total Health Centre", with: @health5.Total_Health_Centre
    fill_in "Year", with: @health5.Year
    click_on "Create Health5"

    assert_text "Health5 was successfully created"
    click_on "Back"
  end

  test "updating a Health5" do
    visit health5s_url
    click_on "Edit", match: :first

    fill_in "Aphc", with: @health5.APHC
    fill_in "District Hospital", with: @health5.District_Hospital
    fill_in "Health Centres Per Lakh Of Population", with: @health5.Health_centres_per_lakh_of_population
    fill_in "Phc", with: @health5.PHC
    fill_in "Referral Hospital", with: @health5.Referral_Hospital
    fill_in "Sub Centre", with: @health5.Sub_Centre
    fill_in "Sub Divisional Hospital", with: @health5.Sub_Divisional_Hospital
    fill_in "Total Health Centre", with: @health5.Total_Health_Centre
    fill_in "Year", with: @health5.Year
    click_on "Update Health5"

    assert_text "Health5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health5" do
    visit health5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health5 was successfully destroyed"
  end
end
