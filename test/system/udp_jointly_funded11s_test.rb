require "application_system_test_case"

class UdpJointlyFunded11sTest < ApplicationSystemTestCase
  setup do
    @udp_jointly_funded11 = udp_jointly_funded11s(:one)
  end

  test "visiting the index" do
    visit udp_jointly_funded11s_url
    assert_selector "h1", text: "Udp Jointly Funded11s"
  end

  test "creating a Udp jointly funded11" do
    visit udp_jointly_funded11s_url
    click_on "New Udp Jointly Funded11"

    fill_in "Amount", with: @udp_jointly_funded11.Amount
    fill_in "Description", with: @udp_jointly_funded11.Description
    fill_in "No Of Projects", with: @udp_jointly_funded11.No_of_Projects
    fill_in "Remarks", with: @udp_jointly_funded11.Remarks
    click_on "Create Udp jointly funded11"

    assert_text "Udp jointly funded11 was successfully created"
    click_on "Back"
  end

  test "updating a Udp jointly funded11" do
    visit udp_jointly_funded11s_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @udp_jointly_funded11.Amount
    fill_in "Description", with: @udp_jointly_funded11.Description
    fill_in "No Of Projects", with: @udp_jointly_funded11.No_of_Projects
    fill_in "Remarks", with: @udp_jointly_funded11.Remarks
    click_on "Update Udp jointly funded11"

    assert_text "Udp jointly funded11 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp jointly funded11" do
    visit udp_jointly_funded11s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp jointly funded11 was successfully destroyed"
  end
end
