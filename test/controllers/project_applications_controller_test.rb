require 'test_helper'

class ProjectApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_application = project_applications(:one)
  end

  test "should get index" do
    get project_applications_url
    assert_response :success
  end

  test "should get new" do
    get new_project_application_url
    assert_response :success
  end

  test "should create project_application" do
    assert_difference('ProjectApplication.count') do
      post project_applications_url, params: { project_application: { accepted: false, group_id: 1, project_id: 5 } }
    end

    assert_redirected_to project_application_url(ProjectApplication.last)
  end

  test "should show project_application" do
    get project_application_url(@project_application)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_application_url(@project_application)
    assert_response :success
  end

  test "should update project_application" do
    patch project_application_url(@project_application), params: { project_application: { accepted: @project_application.accepted, group_id: @project_application.group_id, project_id: @project_application.project_id } }
    assert_redirected_to project_application_url(@project_application)
  end

  test "should destroy project_application" do
    assert_difference('ProjectApplication.count', -1) do
      delete project_application_url(@project_application)
    end

    assert_redirected_to project_applications_url
  end
end
