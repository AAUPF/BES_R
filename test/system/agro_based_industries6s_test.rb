require "application_system_test_case"

class AgroBasedIndustries6sTest < ApplicationSystemTestCase
  setup do
    @agro_based_industries6 = agro_based_industries6s(:one)
  end

  test "visiting the index" do
    visit agro_based_industries6s_url
    assert_selector "h1", text: "Agro Based Industries6s"
  end

  test "creating a Agro based industries6" do
    visit agro_based_industries6s_url
    click_on "New Agro Based Industries6"

    fill_in "Bihar", with: @agro_based_industries6.Bihar
    fill_in "Bihar Percentage Share", with: @agro_based_industries6.Bihar_Percentage_Share
    fill_in "India", with: @agro_based_industries6.India
    fill_in "Indicator", with: @agro_based_industries6.Indicator
    fill_in "Indicator1", with: @agro_based_industries6.Indicator1
    fill_in "Industrial Group", with: @agro_based_industries6.Industrial_Group
    click_on "Create Agro based industries6"

    assert_text "Agro based industries6 was successfully created"
    click_on "Back"
  end

  test "updating a Agro based industries6" do
    visit agro_based_industries6s_url
    click_on "Edit", match: :first

    fill_in "Bihar", with: @agro_based_industries6.Bihar
    fill_in "Bihar Percentage Share", with: @agro_based_industries6.Bihar_Percentage_Share
    fill_in "India", with: @agro_based_industries6.India
    fill_in "Indicator", with: @agro_based_industries6.Indicator
    fill_in "Indicator1", with: @agro_based_industries6.Indicator1
    fill_in "Industrial Group", with: @agro_based_industries6.Industrial_Group
    click_on "Update Agro based industries6"

    assert_text "Agro based industries6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agro based industries6" do
    visit agro_based_industries6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agro based industries6 was successfully destroyed"
  end
end
