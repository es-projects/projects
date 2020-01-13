class Project < ApplicationRecord
	validates :project_name, presence: true, length: {in: 3..50}
    validates :project_description, presence: true, length: {in: 20..300}

    has_and_belongs_to_many :advisors
    has_many :project_applications
end
