require "application_system_test_case"

class UdpJointlyFunded8sTest < ApplicationSystemTestCase
  setup do
    @udp_jointly_funded8 = udp_jointly_funded8s(:one)
  end

  test "visiting the index" do
    visit udp_jointly_funded8s_url
    assert_selector "h1", text: "Udp Jointly Funded8s"
  end

  test "creating a Udp jointly funded8" do
    visit udp_jointly_funded8s_url
    click_on "New Udp Jointly Funded8"

    fill_in "Constructed", with: @udp_jointly_funded8.Constructed
    fill_in "Particulars", with: @udp_jointly_funded8.Particulars
    fill_in "Under Construction", with: @udp_jointly_funded8.Under_Construction
    click_on "Create Udp jointly funded8"

    assert_text "Udp jointly funded8 was successfully created"
    click_on "Back"
  end

  test "updating a Udp jointly funded8" do
    visit udp_jointly_funded8s_url
    click_on "Edit", match: :first

    fill_in "Constructed", with: @udp_jointly_funded8.Constructed
    fill_in "Particulars", with: @udp_jointly_funded8.Particulars
    fill_in "Under Construction", with: @udp_jointly_funded8.Under_Construction
    click_on "Update Udp jointly funded8"

    assert_text "Udp jointly funded8 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp jointly funded8" do
    visit udp_jointly_funded8s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp jointly funded8 was successfully destroyed"
  end
end
