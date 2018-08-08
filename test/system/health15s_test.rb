require "application_system_test_case"

class Health15sTest < ApplicationSystemTestCase
  setup do
    @health15 = health15s(:one)
  end

  test "visiting the index" do
    visit health15s_url
    assert_selector "h1", text: "Health15s"
  end

  test "creating a Health15" do
    visit health15s_url
    click_on "New Health15"

    fill_in "Aphc", with: @health15.APHC
    fill_in "Dh Rh Sdh Phc Hsc Aphc", with: @health15.DH_RH_SDH_PHC_HSC_APHC
    fill_in "District Hospital", with: @health15.District_Hospital
    fill_in "Districts", with: @health15.Districts
    fill_in "Health Subcentre", with: @health15.Health_SubCentre
    fill_in "Phc", with: @health15.PHC
    fill_in "Population Health Institution", with: @health15.Population_Health_Institution
    fill_in "Referral Hospital", with: @health15.Referral_Hospital
    fill_in "Sdh", with: @health15.SDH
    click_on "Create Health15"

    assert_text "Health15 was successfully created"
    click_on "Back"
  end

  test "updating a Health15" do
    visit health15s_url
    click_on "Edit", match: :first

    fill_in "Aphc", with: @health15.APHC
    fill_in "Dh Rh Sdh Phc Hsc Aphc", with: @health15.DH_RH_SDH_PHC_HSC_APHC
    fill_in "District Hospital", with: @health15.District_Hospital
    fill_in "Districts", with: @health15.Districts
    fill_in "Health Subcentre", with: @health15.Health_SubCentre
    fill_in "Phc", with: @health15.PHC
    fill_in "Population Health Institution", with: @health15.Population_Health_Institution
    fill_in "Referral Hospital", with: @health15.Referral_Hospital
    fill_in "Sdh", with: @health15.SDH
    click_on "Update Health15"

    assert_text "Health15 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health15" do
    visit health15s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health15 was successfully destroyed"
  end
end
