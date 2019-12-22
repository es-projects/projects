class UpdateForeignKey < ActiveRecord::Migration[6.0]
  def change
  	# remove the old foreign_key
    remove_foreign_key :students, :users
    remove_foreign_key :advisors, :users

    # add the new foreign_key
    add_foreign_key :students, :users, on_delete: :cascade
    add_foreign_key :advisors, :users, on_delete: :cascade
  end
end
