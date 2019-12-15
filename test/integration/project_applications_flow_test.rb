require 'test_helper'

class SiteFlowTest < ActionDispatch::IntegrationTest
    test "can see the project applications home page" do
        get "/project_applications"
        assert_select "h1", "Project Applications"
    end

    test "can see the new project application page" do
        get "/project_applications/new"
        assert_select "h1", "New Project Application"
    end

end 