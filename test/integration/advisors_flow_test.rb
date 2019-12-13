require 'test_helper'

class SiteFlowTest < ActionDispatch::IntegrationTest
    test "can see the advisors home page" do
        get "/advisors"
        assert_select "h1", "Advisors"
    end

    test "can see the new advisors page" do
        get "/advisors/new"
        assert_select "h1", "New Advisor"
    end

end