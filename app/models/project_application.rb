class ProjectApplication < ApplicationRecord
	validates :group_id, :project_id, presence: true
	validates :group_id, :project_id, numericality: {only_integer: true, :greater_than => 0}
	validates :accepted, inclusion: { in: [true, false]}

	belongs_to :project
end
