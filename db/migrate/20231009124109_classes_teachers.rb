class ClassesTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :class_names_teachers, id: false do |t|
      t.belongs_to :class_name
      t.belongs_to :teacher
      t.timestamps
    end
  end
end
