require "application_system_test_case"

class AnimalHusbandry4sTest < ApplicationSystemTestCase
  setup do
    @animal_husbandry4 = animal_husbandry4s(:one)
  end

  test "visiting the index" do
    visit animal_husbandry4s_url
    assert_selector "h1", text: "Animal Husbandry4s"
  end

  test "creating a Animal husbandry4" do
    visit animal_husbandry4s_url
    click_on "New Animal Husbandry4"

    fill_in "Buffalo", with: @animal_husbandry4.Buffalo
    fill_in "Buffalo Colour", with: @animal_husbandry4.Buffalo_Colour
    fill_in "Cow", with: @animal_husbandry4.Cow
    fill_in "Cow Colour", with: @animal_husbandry4.Cow_Colour
    fill_in "Districts", with: @animal_husbandry4.Districts
    fill_in "Goat", with: @animal_husbandry4.Goat
    fill_in "Goat Colour", with: @animal_husbandry4.Goat_Colour
    fill_in "Pig", with: @animal_husbandry4.Pig
    fill_in "Pig Colour", with: @animal_husbandry4.Pig_Colour
    fill_in "Poultry", with: @animal_husbandry4.Poultry
    fill_in "Poultry Colour", with: @animal_husbandry4.Poultry_Colour
    fill_in "Sheep", with: @animal_husbandry4.Sheep
    fill_in "Sheep Colour", with: @animal_husbandry4.Sheep_Colour
    click_on "Create Animal husbandry4"

    assert_text "Animal husbandry4 was successfully created"
    click_on "Back"
  end

  test "updating a Animal husbandry4" do
    visit animal_husbandry4s_url
    click_on "Edit", match: :first

    fill_in "Buffalo", with: @animal_husbandry4.Buffalo
    fill_in "Buffalo Colour", with: @animal_husbandry4.Buffalo_Colour
    fill_in "Cow", with: @animal_husbandry4.Cow
    fill_in "Cow Colour", with: @animal_husbandry4.Cow_Colour
    fill_in "Districts", with: @animal_husbandry4.Districts
    fill_in "Goat", with: @animal_husbandry4.Goat
    fill_in "Goat Colour", with: @animal_husbandry4.Goat_Colour
    fill_in "Pig", with: @animal_husbandry4.Pig
    fill_in "Pig Colour", with: @animal_husbandry4.Pig_Colour
    fill_in "Poultry", with: @animal_husbandry4.Poultry
    fill_in "Poultry Colour", with: @animal_husbandry4.Poultry_Colour
    fill_in "Sheep", with: @animal_husbandry4.Sheep
    fill_in "Sheep Colour", with: @animal_husbandry4.Sheep_Colour
    click_on "Update Animal husbandry4"

    assert_text "Animal husbandry4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal husbandry4" do
    visit animal_husbandry4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal husbandry4 was successfully destroyed"
  end
end
