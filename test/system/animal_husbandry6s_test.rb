require "application_system_test_case"

class AnimalHusbandry6sTest < ApplicationSystemTestCase
  setup do
    @animal_husbandry6 = animal_husbandry6s(:one)
  end

  test "visiting the index" do
    visit animal_husbandry6s_url
    assert_selector "h1", text: "Animal Husbandry6s"
  end

  test "creating a Animal husbandry6" do
    visit animal_husbandry6s_url
    click_on "New Animal Husbandry6"

    fill_in "Buffalo", with: @animal_husbandry6.Buffalo
    fill_in "Crossbred Cow", with: @animal_husbandry6.Crossbred_Cow
    fill_in "Districts", with: @animal_husbandry6.Districts
    fill_in "Goat", with: @animal_husbandry6.Goat
    fill_in "Local Cow", with: @animal_husbandry6.Local_Cow
    fill_in "Total Cow", with: @animal_husbandry6.Total_Cow
    fill_in "Total Cow Buffalo", with: @animal_husbandry6.Total_Cow_Buffalo
    fill_in "Total Production", with: @animal_husbandry6.Total_Production
    fill_in "Year", with: @animal_husbandry6.Year
    click_on "Create Animal husbandry6"

    assert_text "Animal husbandry6 was successfully created"
    click_on "Back"
  end

  test "updating a Animal husbandry6" do
    visit animal_husbandry6s_url
    click_on "Edit", match: :first

    fill_in "Buffalo", with: @animal_husbandry6.Buffalo
    fill_in "Crossbred Cow", with: @animal_husbandry6.Crossbred_Cow
    fill_in "Districts", with: @animal_husbandry6.Districts
    fill_in "Goat", with: @animal_husbandry6.Goat
    fill_in "Local Cow", with: @animal_husbandry6.Local_Cow
    fill_in "Total Cow", with: @animal_husbandry6.Total_Cow
    fill_in "Total Cow Buffalo", with: @animal_husbandry6.Total_Cow_Buffalo
    fill_in "Total Production", with: @animal_husbandry6.Total_Production
    fill_in "Year", with: @animal_husbandry6.Year
    click_on "Update Animal husbandry6"

    assert_text "Animal husbandry6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal husbandry6" do
    visit animal_husbandry6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal husbandry6 was successfully destroyed"
  end
end
