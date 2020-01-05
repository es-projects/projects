class Project < ApplicationRecord
	validates :project_name, presence: true, length: {in: 3..50}
    validates :project_description, presence: true, length: {in: 20..300}
end
