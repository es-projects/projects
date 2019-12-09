require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save student without name" do
      student = Student.new
      assert_not student.save, "Saved student without name"
  end
end
