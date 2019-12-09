class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.integer :number
      t.string :name
      t.integer :ects
      t.float :average
      t.integer :group_id
      t.integer :project_id

      t.timestamps
    end
  end
end
