class AddReferenceToStudentsInGroup < ActiveRecord::Migration[6.0]
  def change
  	add_column :groups, :student_1_id, :integer
  	add_column :groups, :student_2_id, :integer

  	add_foreign_key :groups, :students, column: :student_1_id, on_delete: :cascade
  	add_foreign_key :groups, :students, column: :student_2_id, on_delete: :cascade
  end
end
