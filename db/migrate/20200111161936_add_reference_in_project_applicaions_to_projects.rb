class AddReferenceInProjectApplicaionsToProjects < ActiveRecord::Migration[6.0]
  def change
  	add_foreign_key :project_applications, :projects, column: :project_id, on_delete: :cascade
  end
end
