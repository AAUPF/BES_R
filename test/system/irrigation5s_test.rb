require "application_system_test_case"

class Irrigation5sTest < ApplicationSystemTestCase
  setup do
    @irrigation5 = irrigation5s(:one)
  end

  test "visiting the index" do
    visit irrigation5s_url
    assert_selector "h1", text: "Irrigation5s"
  end

  test "creating a Irrigation5" do
    visit irrigation5s_url
    click_on "New Irrigation5"

    fill_in "Created Potential", with: @irrigation5.Created_Potential
    fill_in "Irrigation Sources", with: @irrigation5.Irrigation_Sources
    fill_in "Ultimate Potential", with: @irrigation5.Ultimate_Potential
    fill_in "Utilized Potential", with: @irrigation5.Utilized_Potential
    click_on "Create Irrigation5"

    assert_text "Irrigation5 was successfully created"
    click_on "Back"
  end

  test "updating a Irrigation5" do
    visit irrigation5s_url
    click_on "Edit", match: :first

    fill_in "Created Potential", with: @irrigation5.Created_Potential
    fill_in "Irrigation Sources", with: @irrigation5.Irrigation_Sources
    fill_in "Ultimate Potential", with: @irrigation5.Ultimate_Potential
    fill_in "Utilized Potential", with: @irrigation5.Utilized_Potential
    click_on "Update Irrigation5"

    assert_text "Irrigation5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Irrigation5" do
    visit irrigation5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Irrigation5 was successfully destroyed"
  end
end
