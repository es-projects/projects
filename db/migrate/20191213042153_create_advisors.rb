class CreateAdvisors < ActiveRecord::Migration[6.0]
  def change
    create_table :advisors, id: false do |t|
      t.integer :idAdvisor, null: false, unique: true, primary_key: true
      t.string :name, null: false, limit: 60
      t.string :email, null: false, limit: 40
      t.boolean :intern

      t.timestamps
    end
  end
end
