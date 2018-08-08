require "application_system_test_case"

class Health7sTest < ApplicationSystemTestCase
  setup do
    @health7 = health7s(:one)
  end

  test "visiting the index" do
    visit health7s_url
    assert_selector "h1", text: "Health7s"
  end

  test "creating a Health7" do
    visit health7s_url
    click_on "New Health7"

    fill_in "Contractual Sanctioned Posts", with: @health7.Contractual_Sanctioned_Posts
    fill_in "Contractual Working", with: @health7.Contractual_Working
    fill_in "Name Of The Post", with: @health7.Name_of_the_Post
    fill_in "Regular Total Sanctioned Posts", with: @health7.Regular_Total_Sanctioned_Posts
    fill_in "Regular Working", with: @health7.Regular_Working
    fill_in "Year", with: @health7.Year
    click_on "Create Health7"

    assert_text "Health7 was successfully created"
    click_on "Back"
  end

  test "updating a Health7" do
    visit health7s_url
    click_on "Edit", match: :first

    fill_in "Contractual Sanctioned Posts", with: @health7.Contractual_Sanctioned_Posts
    fill_in "Contractual Working", with: @health7.Contractual_Working
    fill_in "Name Of The Post", with: @health7.Name_of_the_Post
    fill_in "Regular Total Sanctioned Posts", with: @health7.Regular_Total_Sanctioned_Posts
    fill_in "Regular Working", with: @health7.Regular_Working
    fill_in "Year", with: @health7.Year
    click_on "Update Health7"

    assert_text "Health7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health7" do
    visit health7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health7 was successfully destroyed"
  end
end
