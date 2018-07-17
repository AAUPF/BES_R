require "application_system_test_case"

class AnimalHusbandry3sTest < ApplicationSystemTestCase
  setup do
    @animal_husbandry3 = animal_husbandry3s(:one)
  end

  test "visiting the index" do
    visit animal_husbandry3s_url
    assert_selector "h1", text: "Animal Husbandry3s"
  end

  test "creating a Animal husbandry3" do
    visit animal_husbandry3s_url
    click_on "New Animal Husbandry3"

    fill_in "Animals Treated In Lakh", with: @animal_husbandry3.Animals_Treated_in_Lakh
    fill_in "Artificial Insemination In Lakh", with: @animal_husbandry3.Artificial_Insemination_in_Lakh
    fill_in "Immunization In Lakh", with: @animal_husbandry3.Immunization_in_Lakh
    fill_in "Year", with: @animal_husbandry3.Year
    click_on "Create Animal husbandry3"

    assert_text "Animal husbandry3 was successfully created"
    click_on "Back"
  end

  test "updating a Animal husbandry3" do
    visit animal_husbandry3s_url
    click_on "Edit", match: :first

    fill_in "Animals Treated In Lakh", with: @animal_husbandry3.Animals_Treated_in_Lakh
    fill_in "Artificial Insemination In Lakh", with: @animal_husbandry3.Artificial_Insemination_in_Lakh
    fill_in "Immunization In Lakh", with: @animal_husbandry3.Immunization_in_Lakh
    fill_in "Year", with: @animal_husbandry3.Year
    click_on "Update Animal husbandry3"

    assert_text "Animal husbandry3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal husbandry3" do
    visit animal_husbandry3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal husbandry3 was successfully destroyed"
  end
end
