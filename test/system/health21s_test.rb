require "application_system_test_case"

class Health21sTest < ApplicationSystemTestCase
  setup do
    @health21 = health21s(:one)
  end

  test "visiting the index" do
    visit health21s_url
    assert_selector "h1", text: "Health21s"
  end

  test "creating a Health21" do
    visit health21s_url
    click_on "New Health21"

    fill_in "Acute Diarrheal Disease", with: @health21.Acute_Diarrheal_Disease
    fill_in "Acute Respiratory Infection", with: @health21.Acute_Respiratory_Infection
    fill_in "Bacillary Dysentery", with: @health21.Bacillary_Dysentery
    fill_in "Districts", with: @health21.Districts
    fill_in "Dogbite", with: @health21.Dogbite
    fill_in "Enteric Fever", with: @health21.Enteric_Fever
    fill_in "Malaria", with: @health21.Malaria
    fill_in "Other State Specific Disease", with: @health21.Other_State_Specific_Disease
    fill_in "Puo", with: @health21.PUO
    fill_in "Pneumonia", with: @health21.Pneumonia
    fill_in "Unusual Syndromes Not Captured", with: @health21.Unusual_Syndromes_Not_Captured
    fill_in "Viral Hepatitis", with: @health21.Viral_Hepatitis
    click_on "Create Health21"

    assert_text "Health21 was successfully created"
    click_on "Back"
  end

  test "updating a Health21" do
    visit health21s_url
    click_on "Edit", match: :first

    fill_in "Acute Diarrheal Disease", with: @health21.Acute_Diarrheal_Disease
    fill_in "Acute Respiratory Infection", with: @health21.Acute_Respiratory_Infection
    fill_in "Bacillary Dysentery", with: @health21.Bacillary_Dysentery
    fill_in "Districts", with: @health21.Districts
    fill_in "Dogbite", with: @health21.Dogbite
    fill_in "Enteric Fever", with: @health21.Enteric_Fever
    fill_in "Malaria", with: @health21.Malaria
    fill_in "Other State Specific Disease", with: @health21.Other_State_Specific_Disease
    fill_in "Puo", with: @health21.PUO
    fill_in "Pneumonia", with: @health21.Pneumonia
    fill_in "Unusual Syndromes Not Captured", with: @health21.Unusual_Syndromes_Not_Captured
    fill_in "Viral Hepatitis", with: @health21.Viral_Hepatitis
    click_on "Update Health21"

    assert_text "Health21 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health21" do
    visit health21s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health21 was successfully destroyed"
  end
end
