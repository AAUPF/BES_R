require "application_system_test_case"

class UdpJointlyFunded5sTest < ApplicationSystemTestCase
  setup do
    @udp_jointly_funded5 = udp_jointly_funded5s(:one)
  end

  test "visiting the index" do
    visit udp_jointly_funded5s_url
    assert_selector "h1", text: "Udp Jointly Funded5s"
  end

  test "creating a Udp jointly funded5" do
    visit udp_jointly_funded5s_url
    click_on "New Udp Jointly Funded5"

    fill_in "Annual Target", with: @udp_jointly_funded5.Annual_Target
    fill_in "Indicator", with: @udp_jointly_funded5.Indicator
    fill_in "Program Or Monitoring Parameter", with: @udp_jointly_funded5.Program_or_Monitoring_Parameter
    fill_in "Progress", with: @udp_jointly_funded5.Progress
    click_on "Create Udp jointly funded5"

    assert_text "Udp jointly funded5 was successfully created"
    click_on "Back"
  end

  test "updating a Udp jointly funded5" do
    visit udp_jointly_funded5s_url
    click_on "Edit", match: :first

    fill_in "Annual Target", with: @udp_jointly_funded5.Annual_Target
    fill_in "Indicator", with: @udp_jointly_funded5.Indicator
    fill_in "Program Or Monitoring Parameter", with: @udp_jointly_funded5.Program_or_Monitoring_Parameter
    fill_in "Progress", with: @udp_jointly_funded5.Progress
    click_on "Update Udp jointly funded5"

    assert_text "Udp jointly funded5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp jointly funded5" do
    visit udp_jointly_funded5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp jointly funded5 was successfully destroyed"
  end
end
