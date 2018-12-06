require "application_system_test_case"

class WomenEmpowerment3sTest < ApplicationSystemTestCase
  setup do
    @women_empowerment3 = women_empowerment3s(:one)
  end

  test "visiting the index" do
    visit women_empowerment3s_url
    assert_selector "h1", text: "Women Empowerment3s"
  end

  test "creating a Women empowerment3" do
    visit women_empowerment3s_url
    click_on "New Women Empowerment3"

    fill_in "Lakshmibai Social Security Pension Scheme", with: @women_empowerment3.Lakshmibai_Social_Security_Pension_Scheme
    fill_in "Mukhyamantri Kanya Suraksha Yojana", with: @women_empowerment3.Mukhyamantri_Kanya_Suraksha_Yojana
    fill_in "Mukhyamantri Kanya Vivah Yojana", with: @women_empowerment3.Mukhyamantri_Kanya_Vivah_Yojana
    fill_in "Nari Shakti Yojana", with: @women_empowerment3.Nari_Shakti_Yojana
    fill_in "Total", with: @women_empowerment3.Total
    fill_in "Year", with: @women_empowerment3.Year
    click_on "Create Women empowerment3"

    assert_text "Women empowerment3 was successfully created"
    click_on "Back"
  end

  test "updating a Women empowerment3" do
    visit women_empowerment3s_url
    click_on "Edit", match: :first

    fill_in "Lakshmibai Social Security Pension Scheme", with: @women_empowerment3.Lakshmibai_Social_Security_Pension_Scheme
    fill_in "Mukhyamantri Kanya Suraksha Yojana", with: @women_empowerment3.Mukhyamantri_Kanya_Suraksha_Yojana
    fill_in "Mukhyamantri Kanya Vivah Yojana", with: @women_empowerment3.Mukhyamantri_Kanya_Vivah_Yojana
    fill_in "Nari Shakti Yojana", with: @women_empowerment3.Nari_Shakti_Yojana
    fill_in "Total", with: @women_empowerment3.Total
    fill_in "Year", with: @women_empowerment3.Year
    click_on "Update Women empowerment3"

    assert_text "Women empowerment3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Women empowerment3" do
    visit women_empowerment3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Women empowerment3 was successfully destroyed"
  end
end
