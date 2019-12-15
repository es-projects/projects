require 'test_helper'

class ProjectApplicationTest < ActiveSupport::TestCase
  test "should not save with invalid group_id"  do
    @project_application = project_applications(:two)
    newProjectApplication = ProjectApplication.new(
    	group_id: @project_application.group_id, 
    	project_id: @project_application.project_id, 
    	accepted: @project_application.accepted)
    assert_not newProjectApplication.save, "Saved project application with invalid group_id"	
  end
  test "should not save with invalid project_id"  do
    @project_application = project_applications(:three)
    newProjectApplication = ProjectApplication.new(
    	group_id: @project_application.group_id, 
    	project_id: @project_application.project_id, 
    	accepted: @project_application.accepted)
    assert_not newProjectApplication.save, "Saved project application with invalid project_id"	
  end
  test "should not save with invalid accepted"  do
    @project_application = project_applications(:four)
    newProjectApplication = ProjectApplication.new(
    	group_id: @project_application.group_id, 
    	project_id: @project_application.project_id, 
    	accepted: @project_application.accepted)
    assert_not newProjectApplication.save, "Saved project application with invalid accepted"	
  end

end
