class AddClassNameIdToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :class_name_id, :integer
    add_foreign_key :teachers, :class_names, column: :class_name_id
  end
end

