class AddReferenceInProjectApplicationsToGroups < ActiveRecord::Migration[6.0]
  def change
  	add_foreign_key :project_applications, :groups, column: :group_id, on_delete: :cascade
  end
end
