class Group < ApplicationRecord

	has_many :project_applications
	has_one :student_1, :class_name => 'Student', :foreign_key => 'student_1_id'
	has_one :student_2, :class_name => 'Student', :foreign_key => 'student_2_id'
end
