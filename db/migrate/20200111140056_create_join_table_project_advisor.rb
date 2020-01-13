class CreateJoinTableProjectAdvisor < ActiveRecord::Migration[6.0]
  def change
    create_join_table :projects, :advisors do |t|
      t.index [:project_id, :advisor_id]
      t.index [:advisor_id, :project_id]
    end
    add_foreign_key :advisors_projects, :projects, on_delete: :cascade
    add_foreign_key :advisors_projects, :advisors, on_delete: :cascade
  end
end
