require "application_system_test_case"

class UdpJointlyFunded2sTest < ApplicationSystemTestCase
  setup do
    @udp_jointly_funded2 = udp_jointly_funded2s(:one)
  end

  test "visiting the index" do
    visit udp_jointly_funded2s_url
    assert_selector "h1", text: "Udp Jointly Funded2s"
  end

  test "creating a Udp jointly funded2" do
    visit udp_jointly_funded2s_url
    click_on "New Udp Jointly Funded2"

    fill_in "Achievement", with: @udp_jointly_funded2.Achievement
    fill_in "Annual Target", with: @udp_jointly_funded2.Annual_Target
    fill_in "Program Monitoring Parameter", with: @udp_jointly_funded2.Program_Monitoring_Parameter
    click_on "Create Udp jointly funded2"

    assert_text "Udp jointly funded2 was successfully created"
    click_on "Back"
  end

  test "updating a Udp jointly funded2" do
    visit udp_jointly_funded2s_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @udp_jointly_funded2.Achievement
    fill_in "Annual Target", with: @udp_jointly_funded2.Annual_Target
    fill_in "Program Monitoring Parameter", with: @udp_jointly_funded2.Program_Monitoring_Parameter
    click_on "Update Udp jointly funded2"

    assert_text "Udp jointly funded2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp jointly funded2" do
    visit udp_jointly_funded2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp jointly funded2 was successfully destroyed"
  end
end
