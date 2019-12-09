class CreateProjectApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :project_applications do |t|
      t.integer :group_id
      t.integer :project_id
      t.boolean :accepted

      t.timestamps
    end
  end
end
