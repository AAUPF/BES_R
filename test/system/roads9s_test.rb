require "application_system_test_case"

class Roads9sTest < ApplicationSystemTestCase
  setup do
    @roads9 = roads9s(:one)
  end

  test "visiting the index" do
    visit roads9s_url
    assert_selector "h1", text: "Roads9s"
  end

  test "creating a Roads9" do
    visit roads9s_url
    click_on "New Roads9"

    fill_in "Bridge Constructed", with: @roads9.Bridge_Constructed
    fill_in "Expenditure", with: @roads9.Expenditure
    fill_in "Name Of The Scheme", with: @roads9.Name_of_the_Scheme
    fill_in "Road Constructed", with: @roads9.Road_Constructed
    click_on "Create Roads9"

    assert_text "Roads9 was successfully created"
    click_on "Back"
  end

  test "updating a Roads9" do
    visit roads9s_url
    click_on "Edit", match: :first

    fill_in "Bridge Constructed", with: @roads9.Bridge_Constructed
    fill_in "Expenditure", with: @roads9.Expenditure
    fill_in "Name Of The Scheme", with: @roads9.Name_of_the_Scheme
    fill_in "Road Constructed", with: @roads9.Road_Constructed
    click_on "Update Roads9"

    assert_text "Roads9 was successfully updated"
    click_on "Back"
  end

  test "destroying a Roads9" do
    visit roads9s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roads9 was successfully destroyed"
  end
end
