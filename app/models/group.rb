class Group < ApplicationRecord

	has_many :project_applications
	belongs_to :student_1, :class_name => 'Student', :foreign_key => 'student_1_id'
	belongs_to :student_2, :class_name => 'Student', :foreign_key => 'student_2_id'
end
