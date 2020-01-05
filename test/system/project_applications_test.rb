require "application_system_test_case"

class ProjectApplicationsTest < ApplicationSystemTestCase
  setup do
    @project_application = project_applications(:one)
  end

  test "visiting the index" do
    visit project_applications_url
    assert_selector "h1", text: "Project Applications"
  end

  test "creating a Project application" do
    visit project_applications_url
    click_on "New Project Application"

    check "Accepted" if @project_application.accepted
    fill_in "Group", with: @project_application.group_id
    fill_in "Project", with: @project_application.project_id
    click_on "Create Project application"

    assert_text "Project application was successfully created"
    click_on "Back"
  end

  test "updating a Project application" do
    visit project_applications_url
    click_on "Edit", match: :first

    check "Accepted" if @project_application.accepted
    fill_in "Group", with: @project_application.group_id
    fill_in "Project", with: @project_application.project_id
    click_on "Update Project application"

    assert_text "Project application was successfully updated"
    click_on "Back"
  end

  test "destroying a Project application" do
    visit project_applications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project application was successfully destroyed"
  end
end
