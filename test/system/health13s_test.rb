require "application_system_test_case"

class Health13sTest < ApplicationSystemTestCase
  setup do
    @health13 = health13s(:one)
  end

  test "visiting the index" do
    visit health13s_url
    assert_selector "h1", text: "Health13s"
  end

  test "creating a Health13" do
    visit health13s_url
    click_on "New Health13"

    fill_in "No Of Sanctioned Posts", with: @health13.No_of_Sanctioned_Posts
    fill_in "Percentage Of Vacant Post", with: @health13.Percentage_of_Vacant_Post
    fill_in "Posts", with: @health13.Posts
    fill_in "Working", with: @health13.Working
    fill_in "Year", with: @health13.Year
    click_on "Create Health13"

    assert_text "Health13 was successfully created"
    click_on "Back"
  end

  test "updating a Health13" do
    visit health13s_url
    click_on "Edit", match: :first

    fill_in "No Of Sanctioned Posts", with: @health13.No_of_Sanctioned_Posts
    fill_in "Percentage Of Vacant Post", with: @health13.Percentage_of_Vacant_Post
    fill_in "Posts", with: @health13.Posts
    fill_in "Working", with: @health13.Working
    fill_in "Year", with: @health13.Year
    click_on "Update Health13"

    assert_text "Health13 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health13" do
    visit health13s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health13 was successfully destroyed"
  end
end
