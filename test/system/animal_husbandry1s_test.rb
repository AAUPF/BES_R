require "application_system_test_case"

class AnimalHusbandry1sTest < ApplicationSystemTestCase
  setup do
    @animal_husbandry1 = animal_husbandry1s(:one)
  end

  test "visiting the index" do
    visit animal_husbandry1s_url
    assert_selector "h1", text: "Animal Husbandry1s"
  end

  test "creating a Animal husbandry1" do
    visit animal_husbandry1s_url
    click_on "New Animal Husbandry1"

    fill_in "Buffalo", with: @animal_husbandry1.Buffalo
    fill_in "Cattle", with: @animal_husbandry1.Cattle
    fill_in "Females Over 3 Years", with: @animal_husbandry1.Females_over_3_years
    fill_in "Goats", with: @animal_husbandry1.Goats
    fill_in "Horses Ponies", with: @animal_husbandry1.Horses_Ponies
    fill_in "Males Over 3 Years", with: @animal_husbandry1.Males_over_3_years
    fill_in "Others", with: @animal_husbandry1.Others
    fill_in "Pigs", with: @animal_husbandry1.Pigs
    fill_in "Sheep", with: @animal_husbandry1.Sheep
    fill_in "Total Livestock", with: @animal_husbandry1.Total_Livestock
    fill_in "Total Poultry", with: @animal_husbandry1.Total_Poultry
    fill_in "Year", with: @animal_husbandry1.Year
    fill_in "Young Stock", with: @animal_husbandry1.Young_stock
    click_on "Create Animal husbandry1"

    assert_text "Animal husbandry1 was successfully created"
    click_on "Back"
  end

  test "updating a Animal husbandry1" do
    visit animal_husbandry1s_url
    click_on "Edit", match: :first

    fill_in "Buffalo", with: @animal_husbandry1.Buffalo
    fill_in "Cattle", with: @animal_husbandry1.Cattle
    fill_in "Females Over 3 Years", with: @animal_husbandry1.Females_over_3_years
    fill_in "Goats", with: @animal_husbandry1.Goats
    fill_in "Horses Ponies", with: @animal_husbandry1.Horses_Ponies
    fill_in "Males Over 3 Years", with: @animal_husbandry1.Males_over_3_years
    fill_in "Others", with: @animal_husbandry1.Others
    fill_in "Pigs", with: @animal_husbandry1.Pigs
    fill_in "Sheep", with: @animal_husbandry1.Sheep
    fill_in "Total Livestock", with: @animal_husbandry1.Total_Livestock
    fill_in "Total Poultry", with: @animal_husbandry1.Total_Poultry
    fill_in "Year", with: @animal_husbandry1.Year
    fill_in "Young Stock", with: @animal_husbandry1.Young_stock
    click_on "Update Animal husbandry1"

    assert_text "Animal husbandry1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal husbandry1" do
    visit animal_husbandry1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal husbandry1 was successfully destroyed"
  end
end
