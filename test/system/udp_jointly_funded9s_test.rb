require "application_system_test_case"

class UdpJointlyFunded9sTest < ApplicationSystemTestCase
  setup do
    @udp_jointly_funded9 = udp_jointly_funded9s(:one)
  end

  test "visiting the index" do
    visit udp_jointly_funded9s_url
    assert_selector "h1", text: "Udp Jointly Funded9s"
  end

  test "creating a Udp jointly funded9" do
    visit udp_jointly_funded9s_url
    click_on "New Udp Jointly Funded9"

    fill_in "Indicators", with: @udp_jointly_funded9.Indicators
    fill_in "Number Amount", with: @udp_jointly_funded9.Number_Amount
    click_on "Create Udp jointly funded9"

    assert_text "Udp jointly funded9 was successfully created"
    click_on "Back"
  end

  test "updating a Udp jointly funded9" do
    visit udp_jointly_funded9s_url
    click_on "Edit", match: :first

    fill_in "Indicators", with: @udp_jointly_funded9.Indicators
    fill_in "Number Amount", with: @udp_jointly_funded9.Number_Amount
    click_on "Update Udp jointly funded9"

    assert_text "Udp jointly funded9 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp jointly funded9" do
    visit udp_jointly_funded9s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp jointly funded9 was successfully destroyed"
  end
end
