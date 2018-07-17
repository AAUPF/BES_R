require "application_system_test_case"

class AnimalHusbandry2sTest < ApplicationSystemTestCase
  setup do
    @animal_husbandry2 = animal_husbandry2s(:one)
  end

  test "visiting the index" do
    visit animal_husbandry2s_url
    assert_selector "h1", text: "Animal Husbandry2s"
  end

  test "creating a Animal husbandry2" do
    visit animal_husbandry2s_url
    click_on "New Animal Husbandry2"

    fill_in "Egg Crore", with: @animal_husbandry2.Egg_crore
    fill_in "Fish Lakh Tonnes", with: @animal_husbandry2.Fish_lakh_tonnes
    fill_in "Meat Lakh Tonnes", with: @animal_husbandry2.Meat_lakh_tonnes
    fill_in "Milk Lakh Tonnes", with: @animal_husbandry2.Milk_lakh_tonnes
    fill_in "Wool Lakh Kgs", with: @animal_husbandry2.Wool_lakh_kgs
    fill_in "Year", with: @animal_husbandry2.Year
    click_on "Create Animal husbandry2"

    assert_text "Animal husbandry2 was successfully created"
    click_on "Back"
  end

  test "updating a Animal husbandry2" do
    visit animal_husbandry2s_url
    click_on "Edit", match: :first

    fill_in "Egg Crore", with: @animal_husbandry2.Egg_crore
    fill_in "Fish Lakh Tonnes", with: @animal_husbandry2.Fish_lakh_tonnes
    fill_in "Meat Lakh Tonnes", with: @animal_husbandry2.Meat_lakh_tonnes
    fill_in "Milk Lakh Tonnes", with: @animal_husbandry2.Milk_lakh_tonnes
    fill_in "Wool Lakh Kgs", with: @animal_husbandry2.Wool_lakh_kgs
    fill_in "Year", with: @animal_husbandry2.Year
    click_on "Update Animal husbandry2"

    assert_text "Animal husbandry2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal husbandry2" do
    visit animal_husbandry2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal husbandry2 was successfully destroyed"
  end
end
