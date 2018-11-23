require "application_system_test_case"

class UdpJointlyFunded4sTest < ApplicationSystemTestCase
  setup do
    @udp_jointly_funded4 = udp_jointly_funded4s(:one)
  end

  test "visiting the index" do
    visit udp_jointly_funded4s_url
    assert_selector "h1", text: "Udp Jointly Funded4s"
  end

  test "creating a Udp jointly funded4" do
    visit udp_jointly_funded4s_url
    click_on "New Udp Jointly Funded4"

    fill_in "Achievement", with: @udp_jointly_funded4.Achievement
    fill_in "Annual Target", with: @udp_jointly_funded4.Annual_Target
    fill_in "Program Monitoring Parameter", with: @udp_jointly_funded4.Program_Monitoring_Parameter
    click_on "Create Udp jointly funded4"

    assert_text "Udp jointly funded4 was successfully created"
    click_on "Back"
  end

  test "updating a Udp jointly funded4" do
    visit udp_jointly_funded4s_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @udp_jointly_funded4.Achievement
    fill_in "Annual Target", with: @udp_jointly_funded4.Annual_Target
    fill_in "Program Monitoring Parameter", with: @udp_jointly_funded4.Program_Monitoring_Parameter
    click_on "Update Udp jointly funded4"

    assert_text "Udp jointly funded4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp jointly funded4" do
    visit udp_jointly_funded4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp jointly funded4 was successfully destroyed"
  end
end
