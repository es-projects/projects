require "application_system_test_case"

class AdvisorsTest < ApplicationSystemTestCase
  setup do
    @advisor = advisors(:one)
  end

  test "visiting the index" do
    visit advisors_url
    assert_selector "h1", text: "Advisors"
  end

  test "creating a Advisor" do
    visit advisors_url
    click_on "New Advisor"

    fill_in "Email", with: @advisor.email
    check "Intern" if @advisor.intern
    fill_in "Name", with: @advisor.name
    click_on "Create Advisor"

    assert_text "Advisor was successfully created"
    click_on "Back"
  end

  test "updating a Advisor" do
    visit advisors_url
    click_on "Edit", match: :first

    fill_in "Email", with: @advisor.email
    check "Intern" if @advisor.intern
    fill_in "Name", with: @advisor.name
    click_on "Update Advisor"

    assert_text "Advisor was successfully updated"
    click_on "Back"
  end

  test "destroying a Advisor" do
    visit advisors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Advisor was successfully destroyed"
  end
end