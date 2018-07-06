require "application_system_test_case"

class Test1sTest < ApplicationSystemTestCase
  setup do
    @test1 = test1s(:one)
  end

  test "visiting the index" do
    visit test1s_url
    assert_selector "h1", text: "Test1s"
  end

  test "creating a Test1" do
    visit test1s_url
    click_on "New Test1"

    fill_in "Name", with: @test1.name
    fill_in "Title", with: @test1.title
    click_on "Create Test1"

    assert_text "Test1 was successfully created"
    click_on "Back"
  end

  test "updating a Test1" do
    visit test1s_url
    click_on "Edit", match: :first

    fill_in "Name", with: @test1.name
    fill_in "Title", with: @test1.title
    click_on "Update Test1"

    assert_text "Test1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Test1" do
    visit test1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test1 was successfully destroyed"
  end
end
