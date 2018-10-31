require "application_system_test_case"

class Irrigation7sTest < ApplicationSystemTestCase
  setup do
    @irrigation7 = irrigation7s(:one)
  end

  test "visiting the index" do
    visit irrigation7s_url
    assert_selector "h1", text: "Irrigation7s"
  end

  test "creating a Irrigation7" do
    visit irrigation7s_url
    click_on "New Irrigation7"

    fill_in "Creation Of Additional Irrigation Potential In Lakh Ha", with: @irrigation7.Creation_of_Additional_Irrigation_Potential_in_lakh_ha
    fill_in "Financial Requirement In Rs Crores", with: @irrigation7.Financial_Requirement_in_Rs_crores
    fill_in "Restoration Of Lost Irrigation Potential In Lakh Ha", with: @irrigation7.Restoration_of_Lost_irrigation_Potential_in_lakh_ha
    fill_in "Scheme", with: @irrigation7.Scheme
    click_on "Create Irrigation7"

    assert_text "Irrigation7 was successfully created"
    click_on "Back"
  end

  test "updating a Irrigation7" do
    visit irrigation7s_url
    click_on "Edit", match: :first

    fill_in "Creation Of Additional Irrigation Potential In Lakh Ha", with: @irrigation7.Creation_of_Additional_Irrigation_Potential_in_lakh_ha
    fill_in "Financial Requirement In Rs Crores", with: @irrigation7.Financial_Requirement_in_Rs_crores
    fill_in "Restoration Of Lost Irrigation Potential In Lakh Ha", with: @irrigation7.Restoration_of_Lost_irrigation_Potential_in_lakh_ha
    fill_in "Scheme", with: @irrigation7.Scheme
    click_on "Update Irrigation7"

    assert_text "Irrigation7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Irrigation7" do
    visit irrigation7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Irrigation7 was successfully destroyed"
  end
end
