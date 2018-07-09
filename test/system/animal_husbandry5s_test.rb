require "application_system_test_case"

class AnimalHusbandry5sTest < ApplicationSystemTestCase
  setup do
    @animal_husbandry5 = animal_husbandry5s(:one)
  end

  test "visiting the index" do
    visit animal_husbandry5s_url
    assert_selector "h1", text: "Animal Husbandry5s"
  end

  test "creating a Animal husbandry5" do
    visit animal_husbandry5s_url
    click_on "New Animal Husbandry5"

    fill_in "Districts", with: @animal_husbandry5.Districts
    fill_in "Fish Production 2014", with: @animal_husbandry5.Fish_Production_2014
    fill_in "Fish Production 2015", with: @animal_husbandry5.Fish_Production_2015
    fill_in "Fish Production 2016", with: @animal_husbandry5.Fish_Production_2016
    fill_in "Fish Seeds 2014", with: @animal_husbandry5.Fish_Seeds_2014
    fill_in "Fish Seeds 2015", with: @animal_husbandry5.Fish_Seeds_2015
    fill_in "Fish Seeds 2016", with: @animal_husbandry5.Fish_Seeds_2016
    click_on "Create Animal husbandry5"

    assert_text "Animal husbandry5 was successfully created"
    click_on "Back"
  end

  test "updating a Animal husbandry5" do
    visit animal_husbandry5s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @animal_husbandry5.Districts
    fill_in "Fish Production 2014", with: @animal_husbandry5.Fish_Production_2014
    fill_in "Fish Production 2015", with: @animal_husbandry5.Fish_Production_2015
    fill_in "Fish Production 2016", with: @animal_husbandry5.Fish_Production_2016
    fill_in "Fish Seeds 2014", with: @animal_husbandry5.Fish_Seeds_2014
    fill_in "Fish Seeds 2015", with: @animal_husbandry5.Fish_Seeds_2015
    fill_in "Fish Seeds 2016", with: @animal_husbandry5.Fish_Seeds_2016
    click_on "Update Animal husbandry5"

    assert_text "Animal husbandry5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal husbandry5" do
    visit animal_husbandry5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal husbandry5 was successfully destroyed"
  end
end
