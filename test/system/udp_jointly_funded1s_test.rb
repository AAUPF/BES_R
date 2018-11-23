require "application_system_test_case"

class UdpJointlyFunded1sTest < ApplicationSystemTestCase
  setup do
    @udp_jointly_funded1 = udp_jointly_funded1s(:one)
  end

  test "visiting the index" do
    visit udp_jointly_funded1s_url
    assert_selector "h1", text: "Udp Jointly Funded1s"
  end

  test "creating a Udp jointly funded1" do
    visit udp_jointly_funded1s_url
    click_on "New Udp Jointly Funded1"

    fill_in "Components Categories", with: @udp_jointly_funded1.Components_Categories
    fill_in "Subproject Cost Sanctioned", with: @udp_jointly_funded1.SubProject_cost_sanctioned
    fill_in "Total Expenditure Till Nov 2017", with: @udp_jointly_funded1.Total_Expenditure_till_Nov_2017
    click_on "Create Udp jointly funded1"

    assert_text "Udp jointly funded1 was successfully created"
    click_on "Back"
  end

  test "updating a Udp jointly funded1" do
    visit udp_jointly_funded1s_url
    click_on "Edit", match: :first

    fill_in "Components Categories", with: @udp_jointly_funded1.Components_Categories
    fill_in "Subproject Cost Sanctioned", with: @udp_jointly_funded1.SubProject_cost_sanctioned
    fill_in "Total Expenditure Till Nov 2017", with: @udp_jointly_funded1.Total_Expenditure_till_Nov_2017
    click_on "Update Udp jointly funded1"

    assert_text "Udp jointly funded1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp jointly funded1" do
    visit udp_jointly_funded1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp jointly funded1 was successfully destroyed"
  end
end
