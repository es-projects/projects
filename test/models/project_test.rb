require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save project without a name" do
  	project = Project.new
  	assert_not project.save , "Saved the course without a name"
  end
end