require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save student without name" do
      student = Student.new
      assert_not student.save, "Saved student without name"
  end

  test "No fields should be blank" do
      student = Student.new
      assert_not student.save, "Saved student without data"
  end

  test "Number should not be string" do
      @student = students(:four)
      student_to_test = Student.new(
          number: @student.number,
          name: @student.name,
          ects: @student.ects,
          average: @student.average,
          group_id: @student.group_id,
          project_id: @student.project_id
      )
      assert_not student_to_test.save, "Saved student with string as a number"
  end

  test "Number should be greater than 0" do
      @student = students(:five)
      student_to_test = Student.new(
          number: @student.number,
          name: @student.name,
          ects: @student.ects,
          average: @student.average,
          group_id: @student.group_id,
          project_id: @student.project_id
      )
      assert_not student_to_test.save, "Saved number below 0"
  end

  test "Group id should be greater than 0" do
      @student = students(:six)
      student_to_test = Student.new(
          number: @student.number,
          name: @student.name,
          ects: @student.ects,
          average: @student.average,
          group_id: @student.group_id,
          project_id: @student.project_id
      )
      assert_not student_to_test.save, "Saved Group id below 0"
  end

  test "Project id should be greater than 0" do
      @student = students(:seven)
      student_to_test = Student.new(
          number: @student.number,
          name: @student.name,
          ects: @student.ects,
          average: @student.average,
          group_id: @student.group_id,
          project_id: @student.project_id
      )
      assert_not student_to_test.save, "Saved Project id below 0"
  end

  test "Ects should be below 180" do
      @student = students(:eight)
      student_to_test = Student.new(
          number: @student.number,
          name: @student.name,
          ects: @student.ects,
          average: @student.average,
          group_id: @student.group_id,
          project_id: @student.project_id
      )
      assert_not student_to_test.save, "Saved ECTS greater than 180"
  end

  test "Average shouldn't be over 20" do
      @student = students(:nine)
      student_to_test = Student.new(
          number: @student.number,
          name: @student.name,
          ects: @student.ects,
          average: @student.average,
          group_id: @student.group_id,
          project_id: @student.project_id
      )
      assert_not student_to_test.save, "Saved average greater than 20"
  end

  # TEST BASIC STRUCTURE
  # test "" do
  #     @student = students(:...)
  #     student_to_test = Student.new(
  #         number: @student.number,
  #         name: @student.name,
  #         ects: @student.ects,
  #         average: @student.average,
  #         group_id: @student.group_id,
  #         project_id: @student.project_id
  #     )
  #     assert_not student_to_test.save, ""
  # end

end
