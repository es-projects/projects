class Student < ApplicationRecord
    validates :name, presence:true
    validates :average, :ects, :number, :group_id, :project_id, presence: true
	validates :number, :group_id, :project_id, numericality: {only_integer: true, :greater_than_or_equal_to => 0}
    validates :ects, numericality: {only_integer: true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 180}
    validates :average, numericality: {:greater_than_or_equal_to => 0, :less_than_or_equal_to => 20}
    
    belongs_to :user
    has_one :group

end
